
package org.springframework.webflow.samples.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.webflow.samples.booking.BugService;

import javax.annotation.PostConstruct;
import java.util.concurrent.atomic.AtomicBoolean;

@Component
public class BookingActionController {

	private AtomicBoolean isBugEnabled;

    /**
     * {@link BugService}
     */
    @Autowired
    private BugService bugService;

    /**
     * Initialize bug status
     */
    @PostConstruct
    public void init() {
        isBugEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.BOOKING_ACTION_CONTROLLER));
    }

	public void disable() {
        bugService.disableBug(BugEnum.BOOKING_ACTION_CONTROLLER);
		this.isBugEnabled.set(false);
	}

	public boolean isBugEnabled() {
		return isBugEnabled.get();
	}

}
