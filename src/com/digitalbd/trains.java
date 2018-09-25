package com.digitalbd;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import AllLayout.Train;

public class trains {
	public String name,id,code,type="intercity";
	public int totalSeat;
	String table = "trains";
	Database db;
	public trains(){
		this.name=this.id=this.code = "";
		db = new Database();
		this.totalSeat = 0;
	}
	public ArrayList<Train> getAll() {
		ArrayList<Train> trains = new ArrayList<Train>();
		String sqlQuery = "SELECT * FROM " + this.table;
		try {
			ResultSet result = db.statement.executeQuery(sqlQuery);
			while(result.next()) {
				Train temp = new Train();
				temp.id = result.getString("id");
				temp.name = result.getString("name");
				temp.code = result.getString("code");
				temp.totalSeat = Integer.parseInt(result.getString("total_seat"));
				trains.add(temp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return trains;
	}
	public void Save() {
		if(this.id.equals("")) {
			this.CreateNew();
		}else {
			this.CreateNew();
		}
		
	}
	private int CreateNew() {
		String sqlQquery = "";
		sqlQquery = "INSERT INTO "+this.table+"(name,code,total_seat,type)"
				+ " VALUES('"+this.name+"','"+this.code+"','"+Integer.toString(this.totalSeat)+"','"+this.type+"')";
					
		try {
			return  this.db.statement.executeUpdate(sqlQquery,Statement.RETURN_GENERATED_KEYS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return 0;
	}
}