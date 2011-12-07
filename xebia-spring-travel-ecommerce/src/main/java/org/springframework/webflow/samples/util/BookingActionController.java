package org.springframework.webflow.samples.util;

import org.springframework.stereotype.Component;

import java.util.concurrent.atomic.AtomicBoolean;

@Component
public class BookingActionController {

	private AtomicBoolean isEnabled = new AtomicBoolean(true);

	public void disable() {
		this.isEnabled.set(false);
	}

	public boolean isEnabled() {
		return isEnabled.get();
	}

}
