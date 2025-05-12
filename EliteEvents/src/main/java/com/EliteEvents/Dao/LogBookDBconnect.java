package com.EliteEvents.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class LogBookDBconnect {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
    	String url = "jdbc:mysql://localhost:3306/eventease_database";

        String user = "root";
        String pw = "Chamara123@";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection conn = DriverManager.getConnection(url, user, pw);
            
            System.out.println("DEBUG: Connection successful!"); 
            
            return conn;
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR: MySQL Driver not found!");
            throw e;
        } catch (SQLException e) {
            System.err.println("ERROR: SQLException - " + e.getMessage());
            throw e;
        }
    }
}