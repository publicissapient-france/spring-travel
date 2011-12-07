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
	public void disableBug1(int securityCode) {
		if (securityCode == 421)
			this.bookingAction.disable();
	}

	@ManagedOperation
	public void disableBug2(int securityCode) {
		if (securityCode == 666)
			this.jpaLogger.disable();
	}
	
	@ManagedOperation
	public void disableBug3(int securityCode) {
		if (securityCode == 314)
			this.databaseCacheAspect.disable();
	}
	
	@ManagedOperation
	public void disableBug4(int securityCode) {
		if (securityCode == 3615)
			this.bookingService.disableBookings();
    }


    @ManagedOperation
    public void disableBug5(int securityCode) {
        if (securityCode == 3614)
            this.bookingService.disableHotels();
    }
    
    @ManagedOperation
    public void disableBug6(int securityCode) {
        if (securityCode == 806)
            this.cacheFilter.disable();
    }
}
