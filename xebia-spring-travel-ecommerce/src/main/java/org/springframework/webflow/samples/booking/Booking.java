package org.springframework.webflow.samples.booking;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.binding.validation.ValidationContext;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.payment.common.account.Account;
import org.springframework.payment.common.account.Address;
import org.springframework.payment.common.account.CardDate;
import org.springframework.payment.common.account.CardType;
import org.springframework.payment.common.account.PaymentCard;
import org.springframework.payment.common.account.PaymentMethod;
import org.springframework.payment.common.account.State;
import org.springframework.payment.common.order.Order;

/**
 * A Hotel Booking made by a User.
 */
@Entity
public class Booking implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;

	private User user;

	private Hotel hotel;

	@DateTimeFormat(pattern = "MM-dd-yyyy")
	private Date checkinDate;

	@DateTimeFormat(pattern = "MM-dd-yyyy")
	private Date checkoutDate;

	private boolean smoking;

	private int beds;

	private Set<Amenity> amenities;

	private String creditCardType;

	private String creditCardNumber;

	private String creditCardName;

	private String creditCardExpiryMonth;

	private int creditCardExpiryYear;

	private String line1;

	private String city;

	private String zip;

	private String state;

	private String phone;

	public Booking() {
		Calendar calendar = Calendar.getInstance();

		CardDate cardDate = CardDate.valueOf(calendar);
		creditCardExpiryMonth = cardDate.getMonthTwoDigit();
		creditCardExpiryYear = cardDate.getYear();

		setCheckinDate(calendar.getTime());
		calendar.add(Calendar.DAY_OF_MONTH, 1);
		setCheckoutDate(calendar.getTime());
	}

	public Booking(Hotel hotel, User user) {
		this();
		this.hotel = hotel;
		this.user = user;
	}

	@Transient
	public BigDecimal getTotal() {
		return hotel.getPrice().multiply(new BigDecimal(getNights()));
	}

	@Transient
	public int getNights() {
		if (checkinDate == null || checkoutDate == null) {
			return 0;
		} else {
			return (int) ((checkoutDate.getTime() - checkinDate.getTime()) / 1000 / 60 / 60 / 24);
		}
	}

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Basic
	@Temporal(TemporalType.DATE)
	public Date getCheckinDate() {
		return checkinDate;
	}

	public void setCheckinDate(Date datetime) {
		this.checkinDate = datetime;
	}

	@ManyToOne
	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	@ManyToOne
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Basic
	@Temporal(TemporalType.DATE)
	public Date getCheckoutDate() {
		return checkoutDate;
	}

	public void setCheckoutDate(Date checkoutDate) {
		this.checkoutDate = checkoutDate;
	}

	public String getCreditCardType() {
		return creditCardType;
	}

	public void setCreditCardType(String creditCardType) {
		this.creditCardType = creditCardType;
	}

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	@Transient
	public String getDescription() {
		DateFormat df = DateFormat.getDateInstance(DateFormat.MEDIUM);
		return hotel == null ? null : hotel.getName() + ", " + df.format(getCheckinDate()) + " to "
				+ df.format(getCheckoutDate());
	}

	public boolean isSmoking() {
		return smoking;
	}

	public void setSmoking(boolean smoking) {
		this.smoking = smoking;
	}

	public int getBeds() {
		return beds;
	}

	public void setBeds(int beds) {
		this.beds = beds;
	}

	public String getCreditCardName() {
		return creditCardName;
	}

	public void setCreditCardName(String creditCardName) {
		this.creditCardName = creditCardName;
	}

	public String getCreditCardExpiryMonth() {
		return creditCardExpiryMonth;
	}

	public void setCreditCardExpiryMonth(String creditCardExpiryMonth) {
		this.creditCardExpiryMonth = creditCardExpiryMonth;
	}

	public int getCreditCardExpiryYear() {
		return creditCardExpiryYear;
	}

	public void setCreditCardExpiryYear(int creditCardExpiryYear) {
		this.creditCardExpiryYear = creditCardExpiryYear;
	}

	public String getLine1() {
		return line1;
	}

	public void setLine1(String line1) {
		this.line1 = line1;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Transient
	public Set<Amenity> getAmenities() {
		return amenities;
	}

	public void setAmenities(Set<Amenity> amenities) {
		this.amenities = amenities;
	}

	public Order createOrder() {
		PaymentCard paymentCard = new PaymentCard(CardType.valueOf(creditCardType), creditCardNumber, creditCardName,
				CardDate.valueOfTwoDigitMonth(creditCardExpiryMonth, creditCardExpiryYear));
		Address address = new Address(line1, city, zip, State.valueOf(state));
		Account account = new Account(user.getFirst(), user.getLast(), user.getEmail());
		return new Order(account, new PaymentMethod(paymentCard, address));
	}

	public void validateEnterBookingDetails(ValidationContext context) {
		MessageContext messages = context.getMessageContext();
		if (checkinDate.before(today())) {
			messages.addMessage(new MessageBuilder().error().source("checkinDate")
					.code("booking.checkinDate.beforeToday").build());
		} else if (checkoutDate.before(checkinDate)) {
			messages.addMessage(new MessageBuilder().error().source("checkoutDate")
					.code("booking.checkoutDate.beforeCheckinDate").build());
		}
	}

	private Date today() {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, -1);
		return calendar.getTime();
	}

	@Override
	public String toString() {
		return "Booking(" + user + "," + hotel + ")";
	}

}
