
package fr.xebia.ws.travel.antifraud.v1_0;

import javax.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the fr.xebia.ws.travel.antifraud.v1_0 package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: fr.xebia.ws.travel.antifraud.v1_0
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Booking }
     * 
     */
    public Booking createBooking() {
        return new Booking();
    }

    /**
     * Create an instance of {@link CreditCard }
     * 
     */
    public CreditCard createCreditCard() {
        return new CreditCard();
    }

    /**
     * Create an instance of {@link SuspiciousBookingFault }
     * 
     */
    public SuspiciousBookingFault createSuspiciousBookingFault() {
        return new SuspiciousBookingFault();
    }

    /**
     * Create an instance of {@link CheckBooking }
     * 
     */
    public CheckBooking createCheckBooking() {
        return new CheckBooking();
    }

    /**
     * Create an instance of {@link CheckBookingResponse }
     * 
     */
    public CheckBookingResponse createCheckBookingResponse() {
        return new CheckBookingResponse();
    }

}
