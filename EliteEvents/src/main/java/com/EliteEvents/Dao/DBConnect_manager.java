package com.EliteEvents.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect_manager {

	private static String url = "jdbc:mysql://localhost:3306/eventease_database";
	private static String user = "root";
	private static String pwd = "Chamara123@";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pwd);
			
		} catch (Exception e) {
			
			System.out.println("Database Connection is not success !");
		}
		
		return con;
	}
	
	
}
