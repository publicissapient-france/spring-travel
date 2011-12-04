package org.springframework.webflow.samples.util;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.LRUMap;
import org.springframework.jmx.export.annotation.ManagedOperation;
import org.springframework.jmx.export.annotation.ManagedResource;
import org.springframework.webflow.samples.booking.Hotel;
import org.springframework.webflow.samples.booking.SearchCriteria;

@ManagedResource("travel-ecommerce:type=HotelCache")
public class HotelCache {
	
	@SuppressWarnings("unchecked")
	private final static Map<SearchCriteria, List<Hotel>> HOTEL_CACHE = new LRUMap(1000);

	@ManagedOperation
	public static int getCacheHit() {
		return cacheHit;
	}

	@ManagedOperation
	public static int getCacheMiss() {
		return cacheMiss;
	}

	private static int cacheHit=0;
	private static int cacheMiss=0;
	
	
	public synchronized List<Hotel> get(Object key) {
		List<Hotel> result = HOTEL_CACHE.get(key);
		if(result!=null){
			cacheHit++;
		} else {
			cacheMiss++;
		}
		return result;
	}

	public synchronized void put(SearchCriteria key, List<Hotel> value) {
		HOTEL_CACHE.put(key, value);
	}

}
