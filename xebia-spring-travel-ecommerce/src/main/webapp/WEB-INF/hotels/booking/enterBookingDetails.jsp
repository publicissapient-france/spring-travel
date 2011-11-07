<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div id="bookingForm">
	<div class="span-5">
		<h3>${booking.hotel.name}</h3>
		
		<address>
			${booking.hotel.address}
			<br/>
			${booking.hotel.city}, ${booking.hotel.state}, ${booking.hotel.zip}
			<br/>
			${booking.hotel.country}
		</address>
		<p>
			Nightly rate: <spring:bind path="booking.hotel.price">${status.value}</spring:bind>
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
				<legend>Book Hotel</legend>
		        <div>
					<div class="span-4">
						<label for="checkinDate">Check In:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="checkinDate"/></p>
						<script type="text/javascript">
							Spring.addDecoration(new Spring.ElementDecoration({
								elementId : "checkinDate",
								widgetType : "dijit.form.DateTextBox",
								widgetAttrs : { datePattern : "MM-dd-yyyy", required : true }}));  
						</script>
						
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="checkoutDate">Check Out:</label>
					</div>
					<div class="span-7 last">
						<p><form:input path="checkoutDate"/></p>
						<script type="text/javascript">
							Spring.addDecoration(new Spring.ElementDecoration({
								elementId : "checkoutDate",
								widgetType : "dijit.form.DateTextBox",
								widgetAttrs : { datePattern : "MM-dd-yyyy", required : true }}));  
						</script>
					</div>
				</div>
				<div>
					<div class="span-4">
						<label for="beds">Room Preference:</label>
					</div>
					<div class="span-7 last">
						<p>
							<form:select id="beds" path="beds">
								<form:option label="One king-size bed" value="1"/>
								<form:option label="Two double beds" value="2"/>
								<form:option label="Three beds" value="3"/>
							</form:select>
						</p>
					</div>
				</div>
				<div>
					<div class="label span-4">
						Smoking Preference:
					</div>
					<div id="radio" class="span-7 last">
						<p>
							<form:radiobutton id="smoking" path="smoking" label="Smoking" value="true"/>
							<form:radiobutton id="non-smoking" path="smoking" label="Non Smoking" value="false"/>
						</p>
						<script type="text/javascript">
							Spring.addDecoration(new Spring.ElementDecoration({
								elementId : 'smoking',
								widgetType : "dijit.form.RadioButton",
								widgetModule : "dijit.form.CheckBox",
								widgetAttrs : { value : "true" }
							}));
							Spring.addDecoration(new Spring.ElementDecoration({
								elementId : 'non-smoking',
								widgetType : "dijit.form.RadioButton",
								widgetModule : "dijit.form.CheckBox",
								widgetAttrs : { value : "false" }
							}));
						</script>
					</div>
				</div>
				<div>
					<div class="label span-4">
						Amenities:
					</div>
					<div id="amenities" class="span-7 last">
						<p>
							<form:checkbox path="amenities" value="OCEAN_VIEW" label="Ocean View" />
							<br />
							<form:checkbox path="amenities" value="LATE_CHECKOUT" label="Late Checkout" />
							<br />
							<form:checkbox path="amenities" value="MINIBAR" label="Minibar" />
						</p>
						<script type="text/javascript">
							dojo.query("#amenities input[type='checkbox']").forEach(function(element){
								Spring.addDecoration(new Spring.ElementDecoration({
									elementId: element.id,
									widgetType : "dijit.form.CheckBox",
									widgetAttrs : { checked : element.checked }
								}));
							});
						</script>
					</div>
				</div>
				<div>
					<p>
					<button type="submit" id="next" name="_eventId_next">Next &gt;&gt;</button>
					<button type="submit" name="_eventId_cancel" >Cancel</button>
					</p>
					<script type="text/javascript">
						Spring.addDecoration(new Spring.ValidateAllDecoration({elementId:'next', event:'onclick'}));
						Spring.addDecoration(new Spring.AjaxEventDecoration({elementId:'next',event:'onclick',formId:'booking',params:{fragments:'body'}}));
					</script>
				</div>
			</fieldset>
		</form:form>	
	</div>
</div>
