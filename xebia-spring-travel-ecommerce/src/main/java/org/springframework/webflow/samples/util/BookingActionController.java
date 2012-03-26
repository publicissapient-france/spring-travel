
package org.springframework.webflow.samples.util;

import javax.annotation.PostConstruct;
import java.util.concurrent.atomic.AtomicBoolean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.webflow.samples.booking.BugService;

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

	public void setBugStatus(boolean enabled) {
        bugService.setStatusByCode(BugEnum.BOOKING_ACTION_CONTROLLER, enabled);
		this.isBugEnabled.set(enabled);
	}

	public boolean isBugEnabled() {
		return isBugEnabled.get();
	}

}
