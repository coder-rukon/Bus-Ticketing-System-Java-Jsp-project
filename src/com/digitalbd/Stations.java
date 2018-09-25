package com.digitalbd;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import AllLayout.Station;
import AllLayout.Train;
import TicketSystemInterface.DatabaseModel;

public class Stations implements DatabaseModel {
	String tableName;
	public String id, name, contact, address;
	Database db;
	public Stations() {
		id = name = contact= address = "";
		db = new Database();
		this.tableName = "stations";
	}
	public ArrayList<Station> getAll() {
		ArrayList<Station> stations = new ArrayList<Station>();
		String sqlQuery = "SELECT * FROM " + this.GetTableName();
		try {
			ResultSet result = db.statement.executeQuery(sqlQuery);
			while(result.next()) {
				Station temp = new Station();
				temp.id = result.getString("id");
				temp.name = result.getString("name");
				temp.contact = result.getString("contact");
				temp.address = result.getString("address");
				stations.add(temp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stations;
	}
	@Override
	public int Save() {
		int newId = this.InsertNew();
		return newId;
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
	private int InsertNew() {
		String  query = "INSERT INTO "+this.GetTableName()+ "(name, contact,address) "
				+ " VALUES('"+this.name+"','"+this.contact+"','"+this.address+"')";
		try {
			return this.db.statement.executeUpdate(query,Statement.RETURN_GENERATED_KEYS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
