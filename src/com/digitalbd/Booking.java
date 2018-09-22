package com.digitalbd;

import TicketSystemInterface.DatabaseModel;

public class Booking implements DatabaseModel{
	private String tableName;
	public String id, station_from, station_to, booking_date, journey_date, train_id, seat_numbers, passenger_id, number_of_seat, payment_status, status, note;
	Database db;
	public Booking() {
		db = new Database();
	}
	
	public Booking(int argId) {
		
	}
	public void SetById(int argId) {
		
	}
	@Override
	public int Save() {
		// TODO Auto-generated method stub
		return 0;
	}
	

	@Override
	public int Update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void Delete() {
		// TODO Auto-generated method stub
	}

	@Override
	public String GetTableName() {
		// TODO Auto-generated method stub
		return this.tableName;
	}
	
	
	
	
}
