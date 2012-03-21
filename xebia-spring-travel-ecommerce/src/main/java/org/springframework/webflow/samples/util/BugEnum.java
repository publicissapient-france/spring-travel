package org.springframework.webflow.samples.util;

/**
 * Created by IntelliJ IDEA.
 * User: diego
 * Date: 3/19/12
 * Time: 9:22 PM
 * To change this template use File | Settings | File Templates.
 */
public enum BugEnum {

    BOOKING_ACTION_CONTROLLER(421),
    JPA_LOGGER(666),
    DATABASE_CACHE_ASPECT(314),
    BOOKING_SERVICE_ENABLED_BOOKINGS(3615),
    BOOKING_SERVICE_ENABLED_HOTELS(3614),
    CACHE_FILTER(806),
    BOOKING_SERVICE_LEAK(1337);
    
    private int code;

    BugEnum(int code) {
        this.code = code;
    }

    public int getCode() {
        return code;
    }
}
