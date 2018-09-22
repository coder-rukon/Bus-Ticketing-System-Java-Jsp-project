<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.digitalbd.Helper,com.digitalbd.User" %>
<%@ include file="header.jsp" %>
<%
String userId = null;
if(session.getAttribute("user_id") != null){
	userId = (String) session.getAttribute("user_id");
}
User user = new User(userId);
%>
<div class="dashboard">
	<div class="box personal_info">
		<h2 class="box_title">Personal Information</h2>
		<table class="table table-bordered">
			<tr>
				<td><strong>Full Name</strong></td>
				<td><%= user.name %></td>
			</tr>
			<tr>
				<td><strong>Email Address</strong></td>
				<td><%= user.email %></td>
			</tr>
			<tr>
				<td><strong>Cell Phone Number</strong></td>
				<td><%= user.phone %></td>
			</tr>
			<tr>
				<td><strong>Address</strong></td>
				<td><%= user.address %></td>
			</tr>
		</table>
	</div>
	<div class="box successfully_purschase_ticket">
		<h2 class="box_title">Successful Purchase Information</h2>
		<table class="table table-bordered">
			<tr>
				<td>Bus Name</td>
				<td>Purchase Date</td>
				<td>Journey Date</td>
				<td>Station From</td>
				<td>Station To</td>
				<td>eTicket Number</td>
				<td>Number of Seats</td>
			</tr>
			<tr>
				<td>Tista</td>
				<td>20/10/2018</td>
				<td>20/10/2018</td>
				<td>Dhaka</td>
				<td>Jamalpur</td>
				<td>4369</td>
				<td>2</td>
			</tr>
		</table>
	</div>
</div>
<%@ include file="footer.jsp" %>