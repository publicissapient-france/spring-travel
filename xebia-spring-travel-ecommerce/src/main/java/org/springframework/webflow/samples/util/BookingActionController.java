package org.springframework.webflow.samples.util;

import org.springframework.stereotype.Component;

@Component
public class BookingActionController {

	private boolean isEnabled = true;

	public void setEnabled(boolean b) {
		this.isEnabled = b;
	}

	public boolean isEnabled() {
		return isEnabled;
	}

}
