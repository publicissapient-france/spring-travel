
package fr.xebia.ws.travel.antifraud.v1_0;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for CreditCardType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="CreditCardType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="VISA"/>
 *     &lt;enumeration value="MASTER_CARD"/>
 *     &lt;enumeration value="AMERICAN_EXPRESS"/>
 *     &lt;enumeration value="DISCOVER"/>
 *     &lt;enumeration value="DINERS_CLUB"/>
 *     &lt;enumeration value="CARTE_BLANCHE"/>
 *     &lt;enumeration value="JCB"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "CreditCardType")
@XmlEnum
public enum CreditCardType {

    VISA,
    MASTER_CARD,
    AMERICAN_EXPRESS,
    DISCOVER,
    DINERS_CLUB,
    CARTE_BLANCHE,
    JCB;

    public String value() {
        return name();
    }

    public static CreditCardType fromValue(String v) {
        return valueOf(v);
    }

}
