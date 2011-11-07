/*
 * Copyright 2008-2010 Xebia and the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package fr.xebia.monitoring.demo.payment;

import java.lang.reflect.Constructor;
import java.util.Random;

import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;

import org.springframework.beans.factory.BeanNameAware;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.jmx.export.naming.SelfNaming;
import org.springframework.payment.common.money.MonetaryAmount;
import org.springframework.payment.common.order.Order;
import org.springframework.payment.core.InvalidCardException;
import org.springframework.payment.core.LostOrStolenCardException;
import org.springframework.payment.core.MissingOrInvalidDataException;
import org.springframework.payment.core.PaymentProcessingException;
import org.springframework.payment.core.PaymentServiceRequest;
import org.springframework.payment.core.PaymentTransaction;
import org.springframework.payment.core.PaymentTransaction.Decision;
import org.springframework.payment.core.PaymentTransactionException;
import org.springframework.payment.core.TransactionAmountException;
import org.springframework.payment.creditcard.CreditCardService;

import fr.xebia.monitoring.demo.Monitoring;

/**
 * InvalidCardException
 * 
 * @author <a href="mailto:cyrille@cyrilleleclerc.com">Cyrille Le Clerc</a>
 */
@ManagedResource
public class ZeRandmolySlowAndBuggyCreditCardService implements CreditCardService, SelfNaming, BeanNameAware {

    private String beanName;

    private int invalidCardExceptionRatioInPercent = 0;

    private int lostOrStolenCardExceptionRatioInPercent = 0;

    private int missingOrInvalidDataExceptionRatioInPercent = 0;

    private int paymentProcessingExceptionRatioInPercent = 1;

    private final Random random = new Random();

    private int slowRequestMinimumDurationInMillis = 2000;

    private int slowRequestRatioInPercent = 5;

    private int threeDSecureVerificationExceptionRatioInPercent = 10;

    private int timeoutExceptionRatioInPercent = 2;

    private int transactionAmountExceptionRatioInPercent = 0;

    public PaymentTransaction authorize(MonetaryAmount total, Order order, String requestId) {
        // TODO Auto-generated method stub
        return null;
    }

    public PaymentTransaction capture(MonetaryAmount total, PaymentTransaction authTransaction) {
        // TODO Auto-generated method stub
        return null;
    }

    @ManagedAttribute
    public int getInvalidCardExceptionRatioInPercent() {
        return invalidCardExceptionRatioInPercent;
    }

    @ManagedAttribute
    public int getLostOrStolenCardExceptionRatioInPercent() {
        return lostOrStolenCardExceptionRatioInPercent;
    }

    @ManagedAttribute
    public int getMissingOrInvalidDataExceptionRatioInPercent() {
        return missingOrInvalidDataExceptionRatioInPercent;
    }

    @Override
    public ObjectName getObjectName() throws MalformedObjectNameException {
        return new ObjectName(Monitoring.JMX_DOMAIN + ":type=RandmolySlowAndBuggyCreditCardService,name=" + beanName);
    }

    @ManagedAttribute
    public int getPaymentProcessingExceptionRatioInPercent() {
        return paymentProcessingExceptionRatioInPercent;
    }

    @ManagedAttribute
    public int getSlowRequestMinimumDurationInMillis() {
        return slowRequestMinimumDurationInMillis;
    }

    @ManagedAttribute
    public int getSlowRequestRatioInPercent() {
        return slowRequestRatioInPercent;
    }

    @ManagedAttribute
    public int getThreeDSecureVerificationExceptionRatioInPercent() {
        return threeDSecureVerificationExceptionRatioInPercent;
    }

    @ManagedAttribute
    public int getTimeoutExceptionRatioInPercent() {
        return timeoutExceptionRatioInPercent;
    }

    @ManagedAttribute
    public int getTransactionAmountExceptionRatioInPercent() {
        return transactionAmountExceptionRatioInPercent;
    }

    public PaymentTransaction purchase(MonetaryAmount total, Order order, String requestId) {
        randomlySlowRequest();
        randmolyThrowException();
        PaymentTransaction paymentTransaction = new PaymentTransaction();
        paymentTransaction.setDecision(Decision.ACCEPT);
        paymentTransaction.setTransactionId("tx-" + random.nextInt());
        PaymentServiceRequest paymentServiceRequest = new PaymentServiceRequest();
        paymentServiceRequest.setRequestId(requestId);
        paymentTransaction.setPaymentServiceRequest(paymentServiceRequest);
        return paymentTransaction;
    }

    protected void randmolyThrowException() throws PaymentTransactionException {
        randomlyThrowException(this.timeoutExceptionRatioInPercent, TimeoutPaymentException.class);
        randomlyThrowException(this.threeDSecureVerificationExceptionRatioInPercent, ThreeDSecureVerificationException.class);
        randomlyThrowException(this.invalidCardExceptionRatioInPercent, InvalidCardException.class);
        randomlyThrowException(this.missingOrInvalidDataExceptionRatioInPercent, MissingOrInvalidDataException.class);
        randomlyThrowException(this.lostOrStolenCardExceptionRatioInPercent, LostOrStolenCardException.class);
        randomlyThrowException(this.paymentProcessingExceptionRatioInPercent, PaymentProcessingException.class);
        randomlyThrowException(this.transactionAmountExceptionRatioInPercent, TransactionAmountException.class);
    }

    protected void randomlySlowRequest() {

        long sleepDurationInMillis = random.nextInt(200);

        if (slowRequestRatioInPercent == 0) {
        } else if (0 == random.nextInt(100 / slowRequestRatioInPercent)) {
            sleepDurationInMillis += slowRequestMinimumDurationInMillis;
        }
        try {
            Thread.sleep(sleepDurationInMillis);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        }

    }

    protected void randomlyThrowException(int exceptionRatioInPercent, Class<? extends PaymentTransactionException> exceptionType) {
        if (exceptionRatioInPercent == 0) {
            return;
        } else if (0 == random.nextInt(100 / exceptionRatioInPercent)) {
            PaymentTransactionException exception;
            try {
                Constructor<? extends PaymentTransactionException> constructor = exceptionType.getConstructor(String.class,
                        PaymentTransaction.class);
                exception = constructor.newInstance("Exception processing transaction", new PaymentTransaction());
                exception.fillInStackTrace();
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }

            throw exception;
        }
    }

    @Override
    public void setBeanName(String name) {
        this.beanName = name;
    }

    @ManagedAttribute
    public void setInvalidCardExceptionRatioInPercent(int invalidCardExceptionRatioInPercent) {
        this.invalidCardExceptionRatioInPercent = invalidCardExceptionRatioInPercent;
    }

    @ManagedAttribute
    public void setLostOrStolenCardExceptionRatioInPercent(int mostOrStolenCardExceptionRatioInPercent) {
        this.lostOrStolenCardExceptionRatioInPercent = mostOrStolenCardExceptionRatioInPercent;
    }

    @ManagedAttribute
    public void setMissingOrInvalidDataExceptionRatioInPercent(int missingOrInvalidDataExceptionRatioInPercent) {
        this.missingOrInvalidDataExceptionRatioInPercent = missingOrInvalidDataExceptionRatioInPercent;
    }

    @ManagedAttribute
    public void setPaymentProcessingExceptionRatioInPercent(int paymentProcessingExceptionRatioInPercent) {
        this.paymentProcessingExceptionRatioInPercent = paymentProcessingExceptionRatioInPercent;
    }

    @ManagedAttribute
    public void setSlowRequestMinimumDurationInMillis(int slowRequestMinimumDurationInMillis) {
        this.slowRequestMinimumDurationInMillis = slowRequestMinimumDurationInMillis;
    }

    @ManagedAttribute
    public void setSlowRequestRatioInPercent(int slowRequestRatioInPercent) {
        this.slowRequestRatioInPercent = slowRequestRatioInPercent;
    }

    @ManagedAttribute
    public void setThreeDSecureVerificationExceptionRatioInPercent(int threeDSecureVerificationExceptionRatioInPercent) {
        this.threeDSecureVerificationExceptionRatioInPercent = threeDSecureVerificationExceptionRatioInPercent;
    }

    @ManagedAttribute
    public void setTimeoutExceptionRatioInPercent(int timeoutExceptionRatioInPercent) {
        this.timeoutExceptionRatioInPercent = timeoutExceptionRatioInPercent;
    }

    @ManagedAttribute
    public void setTransactionAmountExceptionRatioInPercent(int transactionAmountExceptionRatioInPercent) {
        this.transactionAmountExceptionRatioInPercent = transactionAmountExceptionRatioInPercent;
    }
}
