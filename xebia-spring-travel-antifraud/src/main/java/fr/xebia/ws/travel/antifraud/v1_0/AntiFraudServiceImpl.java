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

import java.io.StringWriter;
import java.util.Random;

import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.jmx.export.naming.SelfNaming;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;

import fr.xebia.management.statistics.Profiled;
import fr.xebia.monitoring.demo.Monitoring;

@ManagedResource
public class AntiFraudServiceImpl implements AntiFraudService, SelfNaming, BeanNameAware {

    private final Logger auditLogger = LoggerFactory.getLogger("fr.xebia.audit.AntiFraudService");

    private String beanName;

    private final Random random = new Random();

    private int slowRequestMinimumDurationInMillis = 2000;

    private int slowRequestRatioInPercent = 0;

    private int suspiciousBookingRatioInPercent = 0;

    private XStream xstream = new XStream();

    @Profiled(slowInvocationThresholdInMillis = 1000, verySlowInvocationThresholdInMillis = 2000)
    @Override
    public String checkBooking(Booking booking) throws SuspiciousBookingException {
        try {
            randomlySlowRequest();
            randomlyThrowException();
            String result = "txid-" + Math.abs(random.nextLong());

            auditLogger.info("Authorize booking " + toXmlString(booking) + " " + result);

            return result;
        } catch (SuspiciousBookingException e) {
            auditLogger.error("Reject booking " + toXmlString(booking) + " " + e);
            throw e;
        } catch (RuntimeException e) {
            auditLogger.error("Exception checking booking " + toXmlString(booking) + " " + e);
            throw e;
        }
    }

    @Override
    public ObjectName getObjectName() throws MalformedObjectNameException {
        return new ObjectName(Monitoring.JMX_DOMAIN + ":type=AntiFraudService,name=" + beanName);
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
    public int getSuspiciousBookingRatioInPercent() {
        return suspiciousBookingRatioInPercent;
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

    protected void randomlyThrowException() throws SuspiciousBookingException {
        if (suspiciousBookingRatioInPercent == 0) {
            return;
        } else if (0 == random.nextInt(100 / suspiciousBookingRatioInPercent)) {
            SuspiciousBookingFault suspiciousBookingFault = new SuspiciousBookingFault();
            suspiciousBookingFault.setMessage("Suspicious booking");
            throw new SuspiciousBookingException("Suspicious booking", suspiciousBookingFault);
        }
    }

    @Override
    public void setBeanName(String name) {
        this.beanName = name;
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
    public void setSuspiciousBookingRatioInPercent(int suspiciousBookingRatio) {
        this.suspiciousBookingRatioInPercent = suspiciousBookingRatio;
    }

    protected String toXmlString(Object o) {
        StringWriter writer = new StringWriter();
        xstream.marshal(o, new CompactWriter(writer));
        return writer.toString();
    }
}
