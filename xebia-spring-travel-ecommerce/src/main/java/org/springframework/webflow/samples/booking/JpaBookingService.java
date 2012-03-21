package org.springframework.webflow.samples.booking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.webflow.samples.util.BugEnum;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/**
 * A JPA-based implementation of the Booking Service. Delegates to a JPA entity manager to issue data access calls
 * against the backing repository. The EntityManager reference is provided by the managing container (Spring)
 * automatically.
 */
@Service("bookingService")
@Repository
public class JpaBookingService implements BookingService {

    private EntityManager em;


    private AtomicBoolean isBookingsBugEnabled;

    private AtomicBoolean isLeakEnabled;

    private AtomicBoolean isHotelsBugEnabled;

    private List<String> leakingList = new ArrayList<String>();

    /**
     * {@link BugService}
     */
    @Autowired
    private BugService bugService;

    /**
     * Initialize bugs status.
     */
    @PostConstruct
    public void init() {
        isBookingsBugEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.BOOKING_ACTION_CONTROLLER.getCode()));

        isLeakEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.BOOKING_SERVICE_LEAK.getCode()));

        isHotelsBugEnabled = new AtomicBoolean(bugService.getStatusByCode(BugEnum.BOOKING_SERVICE_ENABLED_HOTELS.getCode()));
    }

    public void disableHotelsBug() {
        isHotelsBugEnabled.set(false);
    }

    @Override
    public void disableLeak() {
        this.isLeakEnabled.set(false);
    }

    public void disableBookingsBug() {
        this.isBookingsBugEnabled.set(false);
    }

    @PersistenceContext
    public void setEntityManager(EntityManager em) {
        this.em = em;
    }

    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
    public List<Booking> findBookings(String username) {
        if (username != null) {
            final String hqlQuery;

            if (isBookingsBugEnabled.get()) {
                hqlQuery = "select distinct b from Booking b left join fetch b.hotel f left join fetch f.bookings where b.user.username = :username order by b.checkinDate";
            } else {
                hqlQuery = "select  b from Booking b where b.user.username = :username order by b.checkinDate";
            }

            return em.createQuery(hqlQuery).setParameter("username", username).getResultList();
        } else {
            return null;
        }
    }

    @Transactional(readOnly = true)
    @SuppressWarnings("unchecked")
    public List<Hotel> findHotels(SearchCriteria criteria) {
        final String pattern = getSearchPattern(criteria);
        final String hqlQuery = "select h from Hotel h where " +
                "lower(h.name) like " + pattern +
                " or lower(h.city) like " + pattern +
                " or lower(h.zip) like " + pattern +
                " or lower(h.address) like " + pattern;
        final List resultList;

        if (isHotelsBugEnabled.get()) {
            List<Hotel> hotels = em.createQuery(hqlQuery).getResultList();
            resultList = new ArrayList<Hotel>();
            int i = 0;

            for (Hotel h : hotels) {
                if (i >= criteria.getPage() * criteria.getPageSize()) {
                    resultList.add(h);
                    if (resultList.size() == criteria.getPageSize()) {
                        break;
                    }
                }
                i++;
            }
        } else {
            resultList = em.createQuery(hqlQuery)
                    .setMaxResults(criteria.getPageSize())
                    .setFirstResult(criteria.getPage() * criteria.getPageSize())
                    .getResultList();
        }

        if(isLeakEnabled.get()) {
            leakingList.add("l33333333333333333333333333334k ! " + System.currentTimeMillis() + "-" + System.nanoTime());
        }

        return resultList;
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
        return (User) em.createQuery("select u from User u where u.username = :username")
                .setParameter("username", username)
                .getSingleResult();
    }

}