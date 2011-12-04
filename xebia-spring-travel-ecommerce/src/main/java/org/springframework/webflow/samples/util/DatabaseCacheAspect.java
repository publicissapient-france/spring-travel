package org.springframework.webflow.samples.util;

import java.util.List;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.webflow.samples.booking.Hotel;
import org.springframework.webflow.samples.booking.SearchCriteria;

@Aspect
public class DatabaseCacheAspect {

	private boolean isEnabled = true;

	public void setEnabled(boolean enabled) {
		isEnabled = enabled;
	}

	@SuppressWarnings("unused")
	private final Logger LOGGER = LoggerFactory
			.getLogger("fr.xebia.timer.DatabaseCache");

	private HotelCache hotelCache;

	public HotelCache getHotelCache() {
		return hotelCache;
	}

	public void setHotelCache(HotelCache hotelCache) {
		this.hotelCache = hotelCache;
	}

	@SuppressWarnings("unchecked")
	@Around("execution(* org.springframework.webflow.samples.booking.JpaBookingService.findHotels(org.springframework.webflow.samples.booking.SearchCriteria)) && args(criteria)")
	public List<Hotel> cacheHotelList(ProceedingJoinPoint joinPoint,
			SearchCriteria criteria) {
		if (isEnabled) {
			if (hotelCache.get(criteria) != null) {
				return hotelCache.get(criteria);
			}
			List<Hotel> result;
			try {
				result = (List<Hotel>) joinPoint
						.proceed(new Object[] { criteria });
				hotelCache.put(criteria, result);
				return result;
			} catch (Throwable e) {
				e.printStackTrace();
			}

		} else {
			try {
				return (List<Hotel>) joinPoint
						.proceed(new Object[] { criteria });
			} catch (Throwable e) {
				e.printStackTrace();
			}

		}
		return null;
	}
}
