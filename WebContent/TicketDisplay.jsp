<%@ include file="header.jsp" %>
<form class="ticket_selecting_form" action="<%= Helper.baseUrl %>TicketDisplay.jsp">
	<h2 class="title">  Train Route Showing For :: DHAKA to DEWANGANJ_BAZAR :: Journey Date - 21-09-2018   </h2>
	<table class="table">
		<tr>
			<th>Serial</th>
			<th>Train No</th>
			<th>Train Name</th>
			<th>Class</th>
			<th>Departure Time</th>
			<th>Adult</th>
			<th>Child</th>
			<th>Selection</th>
		</tr>
		<% for(int i =0; i<10; i++){ %>
		<tr>
			<td>Serial</td>
			<td>Train No</td>
			<td>Train Name</td>
			<td>
				<select name="class" class="form-control">
					    <option value="F_CHAIR" label="F_CHAIR">F_CHAIR</option>
					    <option value="F_SEAT" label="F_SEAT">F_SEAT</option>
					    <option value="SHOVAN" label="SHOVAN">SHOVAN</option>
					    <option value="S_CHAIR" label="S_CHAIR" selected="selected">S_CHAIR</option>
				</select>
			</td>
			<td>Departure Time</td>
			<td>
				<select name="total_adult" class="form-control">
					    <option value="1">01</option>
					    <option value="2">02</option>
					    <option value="3">03</option>
					    <option value="4">04</option>
				</select>
			</td>
			<td>
				<select name="total_child" class="form-control">
					    <option value="1">01</option>
					    <option value="2">02</option>
					    <option value="3">03</option>
				</select>
			</td>
			<td>
				<a href="javascript:;" class="btn btn-success">Search</a>
			</td>
		</tr>
		<% } %>
	</table>
</form>
<%@ include file='footer.jsp' %>