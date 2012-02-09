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
package fr.xebia.ws.travel.antifraud.v1_0;

import com.google.common.base.Objects;
import fr.xebia.monitoring.demo.Monitoring;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.jmx.export.naming.SelfNaming;
import org.springframework.stereotype.Component;

import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;

@Component("AntiFraudService")
@ManagedResource
public class AntiFraudServiceDispatchingImpl implements AntiFraudService, SelfNaming, BeanNameAware {

    @Autowired
    private AntiFraudService antiFraudService;

    private String beanName;

    @Override
    public String checkBooking(Booking booking) throws SuspiciousBookingException {
        return antiFraudService.checkBooking(booking);
    }

    @Override
    public ObjectName getObjectName() throws MalformedObjectNameException {
        return new ObjectName(Monitoring.JMX_DOMAIN + ":type=AntiFraudService,name=" + beanName);
    }

    public void setAntiFraudService(AntiFraudService antiFraudService) {
        this.antiFraudService = antiFraudService;
    }

    @Override
    public void setBeanName(String name) {
        this.beanName = name;
    }

    @Override
    public String toString() {
        return Objects.toStringHelper(this).add("enableAntiFraudService", true).toString();
    }
}
