package org.springframework.webflow.samples.util;

import javax.annotation.PostConstruct;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.webflow.samples.booking.BugService;
import org.springframework.webflow.samples.booking.Hotel;
import org.springframework.webflow.samples.booking.SearchCriteria;

@Aspect
public class DatabaseCacheAspect {

    @SuppressWarnings("unused")
    private final Logger LOGGER = LoggerFactory.getLogger("fr.xebia.timer.DatabaseCache");

	private AtomicBoolean isBugEnabled;

    @Autowired
    private HotelCache hotelCache;

    /**
     * {@link org.springframework.webflow.samples.booking.BugService}
     */
    @Autowired
    private BugService bugService;

    /**
     * Initialize bugs status.
     */
    @PostConstruct
    public void init() {
        isBugEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.DATABASE_CACHE_ASPECT));
    }


	public void setEnabled(boolean enabled) {
        bugService.setStatusByCode(BugEnum.DATABASE_CACHE_ASPECT, enabled);
		isBugEnabled.set(enabled);
	}

    public boolean isBugEnabled(){
        return isBugEnabled.get();
    }

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
        List<Hotel> resultingHotelsList = null;

		if (isBugEnabled.get()) {
            resultingHotelsList = hotelCache.get(criteria);

            if (resultingHotelsList == null) {
                try {
                    resultingHotelsList = (List<Hotel>) joinPoint.proceed(new Object[]{criteria});
                    hotelCache.put(criteria, resultingHotelsList);
                } catch (Throwable e) {
                    e.printStackTrace();
                }
            }

		} else {
			try {
				resultingHotelsList = (List<Hotel>) joinPoint.proceed(new Object[]{criteria});
			} catch (Throwable e) {
				e.printStackTrace();
			}

		}
		return resultingHotelsList;
	}
}
