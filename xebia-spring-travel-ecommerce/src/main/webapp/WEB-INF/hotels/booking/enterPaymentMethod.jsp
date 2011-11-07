<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div id="bookingForm">
	<div class="span-5">
		<h5>Booking Details</h5>
		${booking.hotel.name}
		<address>
			${booking.hotel.address}
			<br/>
			${booking.hotel.city}, ${booking.hotel.state}, ${booking.hotel.zip}
			<br/>
			${booking.hotel.country}
		</address>
		<p>
			Nights in hotel: ${booking.nights}<br/>
			Total: $<spring:bind path="booking.total">${status.value}</spring:bind>
		</p>
	</div>
	<div class="span-12">
		<spring:hasBindErrors name="booking">
			<div class="error">
				<spring:bind path="booking.*">
					<c:forEach items="${status.errorMessages}" var="error">
						<c:out value="${error}"/><!-- error-hidden-marker --><br>
					</c:forEach>
				</spring:bind>
			</div>
		</spring:hasBindErrors>
		<form:form modelAttribute="booking">
			<fieldset>
				<legend>Payment Method</legend>
				<div>
					<div class="span-4">
						<label for="creditCardType">Card Type:</label>
					</div>
					<div class="span-7 last">
						<p>
							<form:select path="creditCardType">
								<form:option value="visa" label="Visa"/>
								<form:option value="mastercard" label="MasterCard"/>
								<form:option value="american_express" label="American Express"/>
							</form:select>						
						</p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="creditCardNumber">Card Number:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="creditCardNumber"/></p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="creditCardName">Name On Card:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="creditCardName" maxlength="40"/></p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="creditCardExpiryMonth">Expiration Date:</label>
					</div>
					<div class="span-7 last">
						<p>
							<form:select id="creditCardExpiryMonth" path="creditCardExpiryMonth">
								<form:option label="Jan" value="01"/>
								<form:option label="Feb" value="02"/>
								<form:option label="Mar" value="03"/>
								<form:option label="Apr" value="04"/>
								<form:option label="May" value="05"/>
								<form:option label="Jun" value="06"/>
								<form:option label="Jul" value="07"/>
								<form:option label="Aug" value="08"/>
								<form:option label="Sep" value="09"/>
								<form:option label="Oct" value="10"/>
								<form:option label="Nov" value="11"/>
								<form:option label="Dec" value="12"/>
							</form:select>
							<form:select path="creditCardExpiryYear">
								<form:option label="2010" value="2010"/>
								<form:option label="2011" value="2011"/>
								<form:option label="2012" value="2012"/>
								<form:option label="2013" value="2013"/>
								<form:option label="2014" value="2014"/>
								<form:option label="2015" value="2015"/>
							</form:select>
						</p>
					</div>
				</div>
				<div>
					<p>
					<button id="back" type="submit" name="_eventId_back">&lt;&lt; Back</button>
					<button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
					<button type="submit" name="_eventId_cancel" >Cancel</button>
					</p>
					<script type="text/javascript">
						Spring.addDecoration(new Spring.AjaxEventDecoration({elementId:'back',event:'onclick',formId:'booking',params:{fragments:'body'}}));
						Spring.addDecoration(new Spring.AjaxEventDecoration({elementId:'next',event:'onclick',formId:'booking',params:{fragments:'body'}}));
					</script>
				</div>
			</fieldset>
		</form:form>	
	</div>
</div>
