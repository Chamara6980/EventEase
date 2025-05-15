package com.EliteEvents.DBUtil;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	private static final String url = "jdbc:mysql://localhost:3306/eventmng";
    private static final String username = "root";
    private static final String password = "12345";
    private static Connection con;
    
    public static Connection getConnection() {
    	try {
    		Class.forName("com.mysql.cj.jdbc.Driver");
    		con = DriverManager.getConnection(url,username, password);
    	} catch (Exception e) {
    		System.out.println("Database connectin is not sucess");
    	}
    	return con;
    }
}
