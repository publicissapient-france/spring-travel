package org.springframework.webflow.samples.util;

import org.springframework.stereotype.Component;

import java.util.concurrent.atomic.AtomicBoolean;

@Component
public class BookingActionController {

	private AtomicBoolean isBugEnabled = new AtomicBoolean(true);

	public void disable() {
		this.isBugEnabled.set(false);
	}

	public boolean isBugEnabled() {
		return isBugEnabled.get();
	}

}
