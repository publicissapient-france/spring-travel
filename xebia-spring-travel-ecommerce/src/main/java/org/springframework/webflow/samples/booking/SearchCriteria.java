package org.springframework.webflow.samples.booking;

import java.io.Serializable;
import java.util.Calendar;


/**
 * A backing bean for the main hotel search form. Encapsulates the criteria needed to perform a hotel search.
 * 
 * It is expected a future milestone of Spring Web Flow 2.0 will allow flow-scoped beans like this one to hold
 * references to transient services that are restored automatically when the flow is resumed on subsequent requests.
 * This would allow this SearchCriteria object to delegate to the {@link BookingService} directly, for example,
 * eliminating the need for the actions in {@link MainActions}.
 */
public class SearchCriteria implements Serializable {
	

    private static final long serialVersionUID = 1L;

    private long timeOfSearch = Calendar.getInstance().getTime().getTime();
    
    public long getTimeOfSearch() {
		return timeOfSearch;
	}

	public void setTimeOfSearch(int timeOfSearch) {
		this.timeOfSearch = timeOfSearch;
	}

	/**
     * The user-provided search criteria for finding Hotels.
     */
    private String searchString;

    /**
     * The maximum page size of the Hotel result list
     */
    private int pageSize;

    /**
     * The current page of the Hotel result list.
     */
    private int page;

    public String getSearchString() {
	return searchString;
    }

    public void setSearchString(String searchString) {
	this.searchString = searchString;
    }

    public int getPageSize() {
	return pageSize;
    }

    public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
    }

    public int getPage() {
	return page;
    }

    public void setPage(int page) {
	this.page = page;
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + page;
		result = prime * result + pageSize;
		result = prime * result
				+ ((searchString == null) ? 0 : searchString.hashCode());
		result = prime * result + (int) (timeOfSearch ^ (timeOfSearch >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SearchCriteria other = (SearchCriteria) obj;
		if (page != other.page)
			return false;
		if (pageSize != other.pageSize)
			return false;
		if (searchString == null) {
			if (other.searchString != null)
				return false;
		} else if (!searchString.equals(other.searchString))
			return false;
		if (timeOfSearch != other.timeOfSearch)
			return false;
		return true;
	}
    
    
}