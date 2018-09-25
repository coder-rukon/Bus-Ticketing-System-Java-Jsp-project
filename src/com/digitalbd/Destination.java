package com.digitalbd;

import java.sql.SQLException;
import java.sql.Statement;

import TicketSystemInterface.DatabaseModel;

public class Destination implements DatabaseModel {
	private String table_name = "destinations";
	public String id,station_from,station_to,train_id,time,status,fare,last_activity,last_modify_by,total_seat,seat_range,type;
	public Database db;
	public Destination() {
		id=station_from=station_to=train_id=time=status=fare=last_activity=last_modify_by=total_seat=seat_range=type = "";
		db = new Database();
	}
	@Override
	public int Save() {
		int destinationId = 0;
		destinationId = this.InsertNew();
		return 0;
	}

	@Override
	public int Update() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void Delete() {
		String querySting = "DLETE FROM "+this.GetTableName()+ " WHERE id='"+this.id+"'";
		try {
			db.statement.executeUpdate(querySting);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public String GetTableName() {
		// TODO Auto-generated method stub
		return this.table_name;
	}
	
	private int InsertNew() {
		String sqlQury = "INSERT INTO "+this.GetTableName()+" (station_from,station_to,train_id,time,status,fare,last_activity,last_modify_by,total_seat,seat_range,type) "
				+ " VALUES('"+this.station_from+"','"+this.station_to+"','"+this.train_id+"','"+time+"','"+status+"','"+fare+"','"+last_activity+"','"+last_modify_by+"','"+total_seat+"','"+seat_range+"','"+type+"')";
		try {
			return this.db.statement.executeUpdate(sqlQury,Statement.NO_GENERATED_KEYS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
}
