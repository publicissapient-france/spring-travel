package org.springframework.webflow.samples.booking;

import java.io.StringWriter;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.jmx.export.naming.SelfNaming;
import org.springframework.payment.common.account.PaymentCard;
import org.springframework.payment.common.money.MonetaryAmount;
import org.springframework.payment.common.order.Order;
import org.springframework.payment.core.GatewayClientException;
import org.springframework.payment.core.InvalidCardException;
import org.springframework.payment.core.PaymentTransactionException;
import org.springframework.payment.creditcard.CreditCardService;
import org.springframework.stereotype.Component;
import org.springframework.webflow.action.MultiAction;
import org.springframework.webflow.context.ExternalContextHolder;
import org.springframework.webflow.context.servlet.ServletExternalContext;
import org.springframework.webflow.execution.Event;
import org.springframework.webflow.execution.RequestContext;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;

import fr.xebia.management.statistics.Profiled;
import fr.xebia.monitoring.demo.Monitoring;
import fr.xebia.ws.travel.antifraud.v1_0.AntiFraudService;
import fr.xebia.ws.travel.antifraud.v1_0.CreditCard;
import fr.xebia.ws.travel.antifraud.v1_0.CreditCardType;
import fr.xebia.ws.travel.antifraud.v1_0.SuspiciousBookingException;

@ManagedResource
@Component
public class BookingAction extends MultiAction implements SelfNaming, BeanNameAware {

    private AntiFraudService antiFraudService;

    private final Logger auditLogger = LoggerFactory.getLogger("fr.xebia.audit.Booking");

    private String beanName;

    private final AtomicInteger bookedNightCounter = new AtomicInteger();

    private final AtomicInteger bookingCounter = new AtomicInteger();

    private CreditCardService creditCardService;

    private Map<String, CreditCardType> creditCardTypeByName = new HashMap<String, CreditCardType>();

    private final Logger logger = LoggerFactory.getLogger(getClass());

    private final AtomicLong totalDurationInNanos = new AtomicLong();

    private XStream xstream = new XStream();

    @Autowired
    public BookingAction(@Qualifier("CreditCardService") CreditCardService creditCardService,
            @Qualifier("AntiFraudService") AntiFraudService antiFraudService) {
        this.creditCardService = creditCardService;
        this.antiFraudService = antiFraudService;

        creditCardTypeByName.put("Visa", CreditCardType.VISA);
        creditCardTypeByName.put("MasterCard", CreditCardType.MASTER_CARD);
        creditCardTypeByName.put("American Express", CreditCardType.AMERICAN_EXPRESS);
        creditCardTypeByName.put("Discover", CreditCardType.DISCOVER);
        creditCardTypeByName.put("Diners Club", CreditCardType.DINERS_CLUB);
        creditCardTypeByName.put("Carte Blanche", CreditCardType.CARTE_BLANCHE);
        creditCardTypeByName.put("JCB", CreditCardType.JCB);

    }

    @ManagedAttribute
    public int getBookedNightCount() {
        return bookedNightCounter.get();
    }

    @ManagedAttribute
    public int getBookingCount() {
        return bookingCounter.get();
    }

    @Override
    public ObjectName getObjectName() throws MalformedObjectNameException {
        return new ObjectName(Monitoring.JMX_DOMAIN + ":type=BookingAction,name=" + beanName);
    }

    @ManagedAttribute
    public long getTotalDurationInMillis() {
        return TimeUnit.MILLISECONDS.convert(getTotalDurationInNanos(), TimeUnit.NANOSECONDS);
    }

    @ManagedAttribute
    public long getTotalDurationInNanos() {
        return totalDurationInNanos.get();
    }

    private Event processException(RequestContext context, Throwable t, String message) {
        HttpServletResponse response = (HttpServletResponse) ((ServletExternalContext) ExternalContextHolder.getExternalContext())
                .getNativeResponse();
        if (!response.isCommitted()) {
            response.setHeader("exception.type", t.getClass().getName());
            response.setHeader("exception.message", t.getMessage());
        }
        logger.error(t.getMessage(), t);
        context.getMessageContext().addMessage(new MessageBuilder().error().defaultText(message).build());
        return error();
    }

    @Override
    public void setBeanName(String name) {
        this.beanName = name;
    }

    @Profiled()
    public Event submitPayment(RequestContext context, Booking booking) throws Exception {

        long nanosBefore = System.nanoTime();

        try {
            try {
                antiFraudService.checkBooking(toAntiFraudBooking(booking));

                auditLogger.info("AntiFraud granted booking " + toXmlString(booking));

            } catch (SuspiciousBookingException e) {
                auditLogger.error("AntiFraud rejected booking " + toXmlString(booking));

                return processException(context, e, "Suspicious order.");

            } catch (RuntimeException e) {
                auditLogger.error("Exception invoking AntiFraud on booking " + toXmlString(booking));
                throw e;
            }

            creditCardService.purchase(new MonetaryAmount(booking.getTotal(), Currency.getInstance("USD")), booking.createOrder(), booking
                    .getId().toString());

            bookingCounter.incrementAndGet();
            bookedNightCounter.addAndGet(booking.getNights());

            return success();

        } catch (InvalidCardException e) {
            return processException(context, e, "The transaction failed using the credit card information you provided.");

        } catch (PaymentTransactionException e) {
            return processException(context, e, "You payment was not processed. Please contact customer service.");

        } catch (GatewayClientException e) {
            return processException(context, e, "Transaction failed at this time due to a payment gateway error.");

        } catch (Throwable t) {
            return processException(context, t, "Unexpected error. Please contact customer service.");
        } finally {
            this.totalDurationInNanos.addAndGet(System.nanoTime() - nanosBefore);
        }

    }

    fr.xebia.ws.travel.antifraud.v1_0.Booking toAntiFraudBooking(Booking booking) {
        Order order = booking.createOrder();
        fr.xebia.ws.travel.antifraud.v1_0.Booking antiFraudBooking = new fr.xebia.ws.travel.antifraud.v1_0.Booking();
        antiFraudBooking.setBeds(booking.getBeds());
        CreditCard creditCard = new CreditCard();
        PaymentCard paymentCard = order.getPaymentMethod().getPaymentCard();
        creditCard.setExpirationMonth(paymentCard.getExpiration().getMonth());
        creditCard.setExpirationYear(paymentCard.getExpiration().getYear());
        creditCard.setHolderName(paymentCard.getCardName());
        creditCard.setNumber(paymentCard.getNumber());
        creditCard.setType(creditCardTypeByName.get(paymentCard.getCardType().getType()));
        antiFraudBooking.setCreditCard(creditCard);
        antiFraudBooking.setHotel(booking.getHotel().getName());
        return antiFraudBooking;
    }

    protected String toXmlString(Object o) {
        StringWriter writer = new StringWriter();
        xstream.marshal(o, new CompactWriter(writer));
        return writer.toString();
    }
}
