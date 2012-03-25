package org.springframework.webflow.samples.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.jmx.export.annotation.ManagedOperation;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.stereotype.Component;
import org.springframework.webflow.samples.booking.BookingService;
import org.springframework.webflow.samples.booking.BugService;


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

    @Autowired
    private BugService bugService;


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

    public void setBugService(BugService bugService) {
        this.bugService = bugService;
    }

    private String getStatusString(boolean enabled){

        return (enabled ? "Enabled" : "Disabled");
    }

    @ManagedAttribute
    public String getBug1(){
        return getStatusString(bookingAction.isBugEnabled());
    }

    @ManagedAttribute
    public String getBug2(){
        return getStatusString(jpaLogger.isBugEnabled());
    }

    @ManagedAttribute
    public String getBug3(){
        return getStatusString(databaseCacheAspect.isBugEnabled());
    }

    @ManagedAttribute
    public String getBug4(){
        return getStatusString(bookingService.isBookingsEnabled());
    }

    @ManagedAttribute
    public String getBug5(){
        return getStatusString(bookingService.isHotelsEnabled());
    }

    @ManagedAttribute
    public String getBug6(){
        return getStatusString(cacheFilter.isBugEnabled());
    }



    @ManagedOperation
    public String disableBug1(int securityCode) {
        if (securityCode == BugEnum.BOOKING_ACTION_CONTROLLER.getCode()) {
            this.bookingAction.setBugStatus(false);
            return "Bug 1 is now disabled";
        }
        this.bookingAction.setBugStatus(true);
        return "Don't think you are, know you are.";
    }

    @ManagedOperation
    public String disableBug2(int securityCode) {
        if (securityCode == BugEnum.JPA_LOGGER.getCode()) {
            this.jpaLogger.setEnabled(false);
            return "Bug 2 is now disabled";
        }
        this.jpaLogger.setEnabled(true);
        return "Men are like steel. When they lose their temper, they lose their worth.";
    }

    @ManagedOperation
    public String disableBug3(int securityCode) {
        if (securityCode == BugEnum.DATABASE_CACHE_ASPECT.getCode()) {
            this.databaseCacheAspect.setEnabled(false);
            return "Bug 3 is now disabled";
        }
        this.databaseCacheAspect.setEnabled(true);
        return "Genius is one percent inspiration and ninety-nine percent perspiration.";
    }

    @ManagedOperation
    public String disableBug4(int securityCode) {
        if (securityCode == BugEnum.BOOKING_SERVICE_ENABLED_BOOKINGS.getCode()) {
            this.bookingService.setBookingsEnabled(false);
            return "Bug 4 is now disabled";
        }
        this.bookingService.setBookingsEnabled(true);
        return "Keep your fears to yourself, but share your inspiration with others.";
    }


    @ManagedOperation
    public String disableBug5(int securityCode) {
        if (securityCode == BugEnum.BOOKING_SERVICE_ENABLED_HOTELS.getCode()) {
            this.bookingService.setHotelsEnabled(false);
            return "Bug 5 is now disabled";
        }
        this.bookingService.setHotelsEnabled(true);
        return "The real excitement is playing the game.";
    }

    @ManagedOperation
    public String disableBug6(int securityCode) {
        if (securityCode == BugEnum.CACHE_FILTER.getCode()) {
            this.cacheFilter.setBugEnabled(false);
            return "Bug 6 is now disabled";
        }
        this.cacheFilter.setBugEnabled(true);
        return "Envy can be a positive motivator. Let it inspire you to work harder for what you want.";
    }


    @ManagedOperation
    public String resetAllBugs(){
        bugService.resetBugs();
        this.bookingAction.setBugStatus(true);
        this.cacheFilter.setBugEnabled(true);
        this.bookingService.setHotelsEnabled(true);
        this.bookingService.setBookingsEnabled(true);
        this.databaseCacheAspect.setEnabled(true);
        this.jpaLogger.setEnabled(true);
        this.bookingAction.setBugStatus(true);

        return "All bugs are now activated.";
    }

}
