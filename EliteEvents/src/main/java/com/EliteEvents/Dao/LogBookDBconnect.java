package com.EliteEvents.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LogBookDBconnect {
	
	public static  Connection getConnection() throws ClassNotFoundException, SQLException{
		String url = "jdbc:mysql://127.0.0.1:3307/eventsystem";
		String user = "root";
		String pw = "Gayath123@";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, user, pw);
		Statement stmt = conn.createStatement();
		
		return conn;
		
	}
	
	
	
	//String sql = "SELECT * FROM event_log_book";
	
	//ResultSet rs = stmt.executeQuery(sql);
	
	

}
