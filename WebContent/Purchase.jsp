<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<div class="signpage">
	<form class="register_form" action="<%= Helper.baseUrl %>TicketDisplay.jsp">
		<div class="rs_form_box">
			<h3 class="form_section_title">
				 PURCHASE TICKET
			</h3>
			<div class="form-group">
				<label>Station From :</label>
				<select class="form-control" id="from_where_select">
					<option value="Dhaka">Dhaka</option>
					<option value="Dhaka">Mymensingh</option>
					<option value="Dhaka">Jamalpur</option>
					<option value="Dhaka">Rajshahi</option>
				</select>
			</div>
			
			<div class="form-group">
				<label>Journey Date :</label>
				<select class="form-control" id="from_where_select">
					<option value="Dhaka">01/01/1954</option>
				</select>
			</div>
			
			<div class="form-group">
				<label>Station To :</label>
				<select class="form-control" id="from_where_select">
					<option value="Dhaka">Dhaka</option>
					<option value="Dhaka">Mymensingh</option>
					<option value="Dhaka">Jamalpur</option>
					<option value="Dhaka">Rajshahi</option>
				</select>
			</div>
			
			<div class="form-group">
				<label>Class :</label>
				<select class="form-control" id="from_where_select">
					<option value="Dhaka">Shuvon</option>
					<option value="Dhaka">F-Class</option>
					<option value="Dhaka">Snigdha</option>
					<option value="Dhaka">S-Chair</option>
				</select>
			</div>

		</div>
		<div class="text-center">
			<div class="rs_btn_group">
				<button class="btn btn-default" type="submit">Search</button>
			</div>
		</div>
	</form>
</div>
<%@ include file='footer.jsp' %>