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

import java.util.concurrent.TimeUnit;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.payment.common.money.MonetaryAmount;
import org.springframework.payment.common.order.Order;
import org.springframework.payment.core.PaymentTransaction;
import org.springframework.payment.creditcard.CreditCardService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;

import com.google.common.base.Joiner;
import com.google.common.base.Throwables;

public class CreditCardServiceAuditingImpl implements CreditCardService {

    private final Logger auditLogger = LoggerFactory.getLogger("fr.xebia.audit.creditcardservice");

    private CreditCardService creditCardService;

    public CreditCardServiceAuditingImpl() {
        super();
    }

    public CreditCardServiceAuditingImpl(CreditCardService creditCardService) {
        super();
        this.creditCardService = creditCardService;
    }

    @Override
    public PaymentTransaction authorize(MonetaryAmount total, Order order, String requestId) {
        return creditCardService.authorize(total, order, requestId);
    }

    @Override
    public PaymentTransaction capture(MonetaryAmount total, PaymentTransaction authTransaction) {
        return creditCardService.capture(total, authTransaction);
    }

    @Override
    public PaymentTransaction purchase(MonetaryAmount total, Order order, String requestId) {
        StringBuilder auditMessage = new StringBuilder("creditcardservice.purchase(" + requestId + ", " + order.getAccount().getEmail()
                + ", " + total + ") by ");
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null) {
            auditMessage.append("anonymous");
        } else {
            auditMessage.append(authentication.getName());
            if (authentication.getDetails() instanceof WebAuthenticationDetails) {
                WebAuthenticationDetails details = (WebAuthenticationDetails) authentication.getDetails();
                auditMessage.append(" coming from " + details.getRemoteAddress());
            }
        }

        long nanosBefore = System.nanoTime();
        try {
            PaymentTransaction paymentTransaction = creditCardService.purchase(total, order, requestId);

            auditMessage.append(" SUCCESS ").append(paymentTransaction.getTransactionId());
            auditMessage.append(" in ").append(TimeUnit.MILLISECONDS.convert(System.nanoTime() - nanosBefore, TimeUnit.NANOSECONDS))
                    .append(" ms");
            auditLogger.info(auditMessage.toString());
            return paymentTransaction;
        } catch (RuntimeException e) {
            auditMessage.append(" FAILURE ").append(Joiner.on(", ").join(Throwables.getCausalChain(e)));
            auditMessage.append(" in ").append(TimeUnit.MILLISECONDS.convert(System.nanoTime() - nanosBefore, TimeUnit.NANOSECONDS))
                    .append(" ms");
            auditLogger.warn(auditMessage.toString());
            throw e;
        }

    }

    @Required
    public void setCreditCardService(CreditCardService creditCardService) {
        this.creditCardService = creditCardService;
    }

}
