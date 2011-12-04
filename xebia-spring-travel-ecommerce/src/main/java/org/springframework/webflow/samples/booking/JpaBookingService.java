package org.springframework.webflow.samples.booking;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

/**
 * A JPA-based implementation of the Booking Service. Delegates to a JPA entity manager to issue data access calls
 * against the backing repository. The EntityManager reference is provided by the managing container (Spring)
 * automatically.
 */
@Service("bookingService")
@Repository
public class JpaBookingService implements BookingService {

    private EntityManager em;
	private boolean isEnabledBookings =true;

    private boolean isEnabledHotels = true;

    public void setEnabledHotels(boolean enabledHotels) {
        isEnabledHotels = enabledHotels;
    }

    public void setEnabledBookings(boolean isEnabled) {
		this.isEnabledBookings = isEnabled;
	}

	@PersistenceContext
    public void setEntityManager(EntityManager em) {
	this.em = em;
    }

    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
    public List<Booking> findBookings(String username) {
	if (username != null) {
			if (isEnabledBookings){
	    return em.createQuery("select distinct b from Booking b left join fetch b.hotel f left join fetch f.bookings where b.user.username = :username order by b.checkinDate")
		    .setParameter("username", username).getResultList();}
		else {
			return em.createQuery("select  b from Booking b where b.user.username = :username order by b.checkinDate")
				    .setParameter("username", username).getResultList();
		}
	} else {
	    return null;
	}
    }

    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
    public List<Hotel> findHotels(SearchCriteria criteria) {
	    String pattern = getSearchPattern(criteria);
        if (isEnabledHotels){
             List<Hotel> hotels = em.createQuery("select h from Hotel h where lower(h.name) like " + pattern + " or lower(h.city) like " + pattern
			    + " or lower(h.zip) like " + pattern + " or lower(h.address) like " + pattern).getResultList();
            List<Hotel> res = new ArrayList<Hotel>();
            int i = 0;
            for (Hotel h : hotels){
                if (i>= criteria.getPage() * criteria.getPageSize()){
                    res.add(h);
                    if (res.size() == criteria.getPageSize()){
                        break;
                    }
                }
                i++;
            }
            return res;

        } else {
	    return em.createQuery(
		    "select h from Hotel h where lower(h.name) like " + pattern + " or lower(h.city) like " + pattern
			    + " or lower(h.zip) like " + pattern + " or lower(h.address) like " + pattern).setMaxResults(
		    criteria.getPageSize()).setFirstResult(criteria.getPage() * criteria.getPageSize()).getResultList();
        }
    }

    @Transactional(readOnly = true)
    public Hotel findHotelById(Long id) {
	return em.find(Hotel.class, id);
    }

    @Transactional(readOnly = true)
    public Booking createBooking(Long hotelId, String username) {
	Hotel hotel = em.find(Hotel.class, hotelId);
	User user = findUser(username);
	Booking booking = new Booking(hotel, user);
	em.persist(booking);
	return booking;
    }

    @Transactional
    public void cancelBooking(Long id) {
	Booking booking = em.find(Booking.class, id);
	if (booking != null) {
	    em.remove(booking);
	}

    }

    // helpers

    private String getSearchPattern(SearchCriteria criteria) {
	if (StringUtils.hasText(criteria.getSearchString())) {
	    return "'%" + criteria.getSearchString().toLowerCase().replace('*', '%') + "%'";
	} else {
	    return "'%'";
	}
    }

    private User findUser(String username) {
	return (User) em.createQuery("select u from User u where u.username = :username").setParameter("username",
		username).getSingleResult();
    }

}