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
				<legend>Billing Address</legend>
				<div>
					<div class="span-4">
						<label for="line1">Address Line 1:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="line1"/></p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="city">City:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="city"/></p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="state">State:</label>
					</div>
					<div class="span-7 last">
						<p>
							<form:select path="state">
								<form:option value="AL" label="Alabama"/>
								<form:option value="AK" label="Alaska"/>
								<form:option value="AZ" label="Arizona"/>
								<form:option value="AR" label="Arkansas"/>
								<form:option value="CA" label="California"/>
								<form:option value="CO" label="Colorado"/>
								<form:option value="CT" label="Connecticut"/>
								<form:option value="DE" label="Delaware"/>
								<form:option value="DC" label="District of Columbia"/>
								<form:option value="FL" label="Florida"/>
								<form:option value="GA" label="Georgia"/>
								<form:option value="HI" label="Hawaii"/>
								<form:option value="ID" label="Idaho"/>
								<form:option value="IL" label="Illinois"/>
								<form:option value="IN" label="Indiana"/>
								<form:option value="IA" label="Iowa"/>
								<form:option value="KS" label="Kansas"/>
								<form:option value="KY" label="Kentucky"/>
								<form:option value="LA" label="Louisiana"/>
								<form:option value="ME" label="Maine"/>
								<form:option value="MD" label="Maryland"/>
								<form:option value="MA" label="Massachusetts"/>
								<form:option value="MI" label="Michigan"/>
								<form:option value="MN" label="Minnesota"/>
								<form:option value="MS" label="Mississippi"/>
								<form:option value="MO" label="Missouri"/>
								<form:option value="MT" label="Montana"/>
								<form:option value="NE" label="Nebraska"/>
								<form:option value="NV" label="Nevada"/>
								<form:option value="NH" label="New Hampshire"/>
								<form:option value="NJ" label="New Jersey"/>
								<form:option value="NM" label="New Mexico"/>
								<form:option value="NY" label="New York"/>
								<form:option value="NC" label="North Carolina"/>
								<form:option value="ND" label="North Dakota"/>
								<form:option value="OH" label="Ohio"/>
								<form:option value="OK" label="Oklahoma"/>
								<form:option value="OR" label="Oregon"/>
								<form:option value="PA" label="Pennsylvania"/>
								<form:option value="RI" label="Rhode Island"/>
								<form:option value="SC" label="South Carolina"/>
								<form:option value="SD" label="South Dakota"/>
								<form:option value="TN" label="Tennessee"/>
								<form:option value="TX" label="Texas"/>
								<form:option value="UT" label="Utah"/>
								<form:option value="VT" label="Vermont"/>
								<form:option value="VA" label="Virginia"/>
								<form:option value="WA" label="Washington"/>
								<form:option value="WV" label="West Virginia"/>
								<form:option value="WI" label="Wisconsin"/>
								<form:option value="WY" label="Wyoming"/>
							</form:select>
						</p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="postcode">Zip:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="zip"/></p>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="phone">Phone Number:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="phone" maxlength="40"/></p>
					</div>
				</div>
				<div>
					<p>
					<button id="back" type="submit" name="_eventId_back">&lt;&lt; Back</button>
					<button id="next" type="submit" name="_eventId_next">Next &gt;&gt;</button>
					<button type="submit" name="_eventId_cancel" >Cancel</button>
					</p>
					<script type="text/javascript">
						Spring.addDecoration(new Spring.ValidateAllDecoration({elementId:'next', event:'onclick'}));
						Spring.addDecoration(new Spring.AjaxEventDecoration({elementId:'next',event:'onclick',formId:'booking',params:{fragments:'body'}}));
						Spring.addDecoration(new Spring.AjaxEventDecoration({elementId:'back',event:'onclick',formId:'booking',params:{fragments:'body'}}));
					</script>
				</div>
			</fieldset>
		</form:form>	
	</div>
</div>
