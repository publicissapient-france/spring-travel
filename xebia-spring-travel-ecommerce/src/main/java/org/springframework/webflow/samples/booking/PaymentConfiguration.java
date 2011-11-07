package org.springframework.webflow.samples.booking;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.payment.creditcard.CreditCardService;

import fr.xebia.monitoring.demo.payment.CreditCardServiceAuditingImpl;
import fr.xebia.monitoring.demo.payment.CreditCardServiceMonitoringImpl;
import fr.xebia.monitoring.demo.payment.ZeRandmolySlowAndBuggyCreditCardService;

@Configuration
public class PaymentConfiguration {

    @Bean(name = "CreditCardService")
    public CreditCardService creditCardService() throws Exception {
        return creditCardServiceAuditingImpl();
    }

    @Bean(name = "CreditCardServiceAuditingImpl")
    public CreditCardService creditCardServiceAuditingImpl() throws Exception {
        return new CreditCardServiceAuditingImpl(creditCardServiceMonitoringImpl());
    }

    @Bean(name = "CreditCardServiceMonitoringImpl")
    public CreditCardService creditCardServiceMonitoringImpl() {
        return new CreditCardServiceMonitoringImpl(creditCardServiceImpl());
    }

    @Bean(name = "CreditCardServiceImpl")
    public CreditCardService creditCardServiceImpl() {
        return new ZeRandmolySlowAndBuggyCreditCardService();
    }

}
