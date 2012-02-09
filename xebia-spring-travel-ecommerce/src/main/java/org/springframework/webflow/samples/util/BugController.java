package org.springframework.webflow.samples.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedOperation;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Component;
import org.springframework.webflow.samples.booking.BookingService;


@ManagedResource("travel-ecommerce:type=BugController")
@Component
public class BugController {

    @Autowired
    private BookingActionController bookingAction;
    @Autowired
    private JpaLogger jpaLogger;
    @Autowired
    private DatabaseCacheAspect databaseCacheAspect;
    @Autowired
    private BookingService bookingService;
    @Autowired
    private CacheFilter cacheFilter;


    public CacheFilter getCacheFilter() {
        return cacheFilter;
    }

    public void setCacheFilter(CacheFilter cacheFilter) {
        this.cacheFilter = cacheFilter;
    }

    public BookingActionController getBookingAction() {
        return bookingAction;
    }

    public void setBookingAction(BookingActionController bookingAction) {
        this.bookingAction = bookingAction;
    }

    public JpaLogger getJpaLogger() {
        return jpaLogger;
    }

    public void setJpaLogger(JpaLogger jpaLogger) {
        this.jpaLogger = jpaLogger;
    }

    public DatabaseCacheAspect getDatabaseCacheAspect() {
        return databaseCacheAspect;
    }

    public void setDatabaseCacheAspect(DatabaseCacheAspect databaseCacheAspect) {
        this.databaseCacheAspect = databaseCacheAspect;
    }

    public BookingService getBookingService() {
        return bookingService;
    }

    public void setBookingService(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @ManagedOperation
    public String disableBug1(int securityCode) {
        if (securityCode == 421) {
            this.bookingAction.disable();
            return "Bug 1 is now disabled";
        }
        return "Don't think you are, know you are.";
    }

    @ManagedOperation
    public String disableBug2(int securityCode) {
        if (securityCode == 666) {
            this.jpaLogger.disable();
            return "Bug 2 is now disabled";
        }
        return "Men are like steel. When they lose their temper, they lose their worth.";
    }

    @ManagedOperation
    public String disableBug3(int securityCode) {
        if (securityCode == 314) {
            this.databaseCacheAspect.disable();
            return "Bug 3 is now disabled";
        }
        return "Genius is one percent inspiration and ninety-nine percent perspiration.";
    }

    @ManagedOperation
    public String disableBug4(int securityCode) {
        if (securityCode == 3615) {
            this.bookingService.disableBookingsBug();
            return "Bug 4 is now disabled";
        }
        return "Keep your fears to yourself, but share your inspiration with others.";
    }


    @ManagedOperation
    public String disableBug5(int securityCode) {
        if (securityCode == 3614) {
            this.bookingService.disableHotelsBug();
            return "Bug 5 is now disabled";
        }
        return "The real excitement is playing the game.";
    }

    @ManagedOperation
    public String disableBug6(int securityCode) {
        if (securityCode == 806) {
            this.cacheFilter.disable();
            return "Bug 6 is now disabled";
        }
        return "Envy can be a positive motivator. Let it inspire you to work harder for what you want.";
    }

    @ManagedOperation
    public String disableBug7(int securityCode) {
        if (securityCode == 1337) {
            this.bookingService.disableLeak();
            return "Bug 7 is now disabled";
        }
        return "An expert is a person who has made all the mistakes that can be made in a very narrow field.";
    }
}
