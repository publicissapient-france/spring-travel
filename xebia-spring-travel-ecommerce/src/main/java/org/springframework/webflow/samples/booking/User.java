package org.springframework.webflow.samples.booking;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * A user who can book hotels.
 */
@Entity
@Table(name = "Customer")
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	private String username;

	private String password;

	private String first;

	private String last;

	private String email;
	
	private Set<Booking> bookings;

	@OneToMany
	public Set<Booking> getBookings() {
		return bookings;
	}

	public void setBookings(Set<Booking> bookings) {
		this.bookings = bookings;
	}

	public User() {
		// Hibernate
	}

	public User(String username, String password, String first, String last,
			String email,Set<Booking> bookings) {
		this.username = username;
		this.password = password;
		this.first = first;
		this.last = last;
		this.email = email;
		this.bookings=bookings;
	}

	@Id
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String toString() {
		return "User(" + username + ")";
	}
}
