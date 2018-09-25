<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="AllLayout.*,com.digitalbd.*,java.util.ArrayList,java.util.Iterator" %>
<%

Stations sts = new Stations();
if(request.getParameter("createStation") != null){
	sts.name = (String) request.getParameter("name");
	sts.contact = (String) request.getParameter("contact");
	sts.address = (String) request.getParameter("address");
	sts.Save();
}
trains trn = new trains();
ArrayList<Train> trainlist = new ArrayList<Train>();
trainlist = trn.getAll();
Iterator trnIt = trainlist.iterator();


ArrayList<Station> stationList = sts.getAll();
Iterator stationIterator = stationList.iterator();
boolean isSearchBoxNeed = true;
if(request.getParameter("search") != null){
	isSearchBoxNeed = false;
}
if(request.getParameter("save_all") != null){
	
}
%>
    
<%@ include file="header.jsp" %>
<div class="signpage">
	<% if(isSearchBoxNeed){ %>
	<form class="register_form" action="<%= Helper.baseUrl %>Destinations.jsp?search=1" method="post">
		
		<div class="row">
			<div class="col-xs-12 col-sm-6 offset-sm-3">
				<div class="rs_form_box">
					<h3 class="form_section_title">
						Information
					</h3>
					<div class="input-group">
						<label>Select Train</label>
						<select name="dst_train" class="form-control" style="width:auto;">
							<%
								while(trnIt.hasNext()){
									Train trnTemp = (Train) trnIt.next();
									%>
									<option value="<%= trnTemp.id %>"><%= trnTemp.name+" ("+trnTemp.code+")" %></option>
									<%
								}
							%>
						</select>
					</div>
					
					<div class="input-group">
						<label>Station From</label>
						<select name="station_from" class="form-control" style="width:auto;">
							<%
								while(stationIterator.hasNext()){
									Station stsTemp = (Station) stationIterator.next();
									%>
									<option value="<%= stsTemp.id %>"><%= stsTemp.name %></option>
									<%
								}
							%>
						</select>
					</div>

				</div>

			</div>
			<div class="col-xs-12 col-sm-12 text-center">
				<div class="rs_btn_group">
					<button class="btn btn-default pull-left" name="search" type="submit">Search</button>
				</div>
			</div>
		</div>
	</form>
	<% }else{ %>
		<div class="rs_box" style="overflow:auto;">
			<form class="ticket_selecting_form" method="post" name="frm_deslist">
				<h2 class="title"> Train Name: Tista <br>Station From: Dhaka </h2>
				<table class="table table_des_seat" id="table_des_list">
					<tr>
						<th>Station To</th>
						<th>Time</th>
						<th>Unit Fare</th>
						<th>Total Seat</th>
						<th>Seat Range (10-15)</th>
						<th width="50" align="center">Actions</th>
					</tr>
					<tr>
						<td>
							<div class="input-group">
								<select name="station_from" class="form-control">
									<%
										while(stationIterator.hasNext()){
											Station stsTemp = (Station) stationIterator.next();
											%>
											<option value="<%= stsTemp.id %>"><%= stsTemp.name %></option>
											<%
										}
									%>
								</select>
							</div>

						</td>
						<td>
							<div class="input-group">
								<input class="form-contoller" name="jurny_time[]">
							</div>
						</td>
						<td>
							<div class="input-group">
								<input class="form-contoller" name="fare[]">
							</div>
						</td>
						<td>
							<div class="input-group">
								<input class="form-contoller" name="total_seat[]">
							</div>
						</td>
						
						<td align="center">
							<div class="input-group">
								<input class="form-contoller" name="seat_range[]">
							</div>
						</td>
						<td><a href="?delete=1" class="btn btn-danger btn-xs rv_destination" type="button">X</button></td>
					</tr>
				</table>
				<div class="text-center">
					<div class="rs_btn_group">
						<button class="btn btn-success pull-left" name="save_all" type="submit">Save All</button>
						<button id="btn_add_new_item" class="btn btn-info pull-left" name="search" type="button">Add New Item</button>
					</div>
				</div>
			</form>
			
			<table id="data_list_item" style="display:none;">
				
		
					<tr>
									<td>
										<div class="input-group">
											<select name="station_from" class="form-control">
												<%
														for(int i =0; i<stationList.size(); i++){
															Station stsTemp = (Station) stationList.get(i);
															%>
															<option value="<%= stsTemp.id %>"><%= stsTemp.name %></option>
															<%
														}
													%>
										</select>
							</div>
					
						</td>
						<td>
							<div class="input-group">
								<input class="form-contoller" name="jurny_time[]">
							</div>
						</td>
						<td>
							<div class="input-group">
								<input class="form-contoller" name="fare[]">
							</div>
						</td>
						<td>
							<div class="input-group">
								<input class="form-contoller" name="total_seat[]">
							</div>
						</td>
						
						<td align="center">
							<div class="input-group">
								<input class="form-contoller" name="seat_range[]">
							</div>
						</td>
						<td><button class="btn btn-danger btn-xs rv_destination" type="button">X</button></td>
					</tr>
			</table>
			
		</div>
	<% } %>
	
	
</div>
<%@ include file="footer.jsp" %>