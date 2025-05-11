package com.EliteEvents.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.EliteEvents.Model.*;
import com.mysql.jdbc.PreparedStatement;
import com.EliteEvents.Dao.LogBookDBconnect;


public class LogBookServices {
	
	public void insertLogBook(logBookModel lgModel) {
	    try (Connection conn = LogBookDBconnect.getConnection();
	         java.sql.PreparedStatement pstmt = conn.prepareStatement(
	            "INSERT INTO event_log_book (EvendId, venue, Date, customerName, rating) VALUES (?, ?, ?, ?, ?)")) {
	        pstmt.setString(1, lgModel.getEventId());
	        pstmt.setString(2, lgModel.getVenue());
	        pstmt.setString(3, lgModel.getDate());
	        pstmt.setString(4, lgModel.getCusName());
	        pstmt.setString(5, lgModel.getUserRating());
	        pstmt.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

		
	
	
	public List<logBookModel> showLogBook() {
		
		List<logBookModel> logList = new ArrayList<>();
		
		try {
			LogBookDBconnect logdb = new LogBookDBconnect();
			Statement stmt = logdb.getConnection().createStatement();
			
			String sql = "SELECT * FROM event_log_book";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				logBookModel logEnter = new logBookModel();
				
				logEnter.setEventId(rs.getString("EvendId"));
	            logEnter.setVenue(rs.getString("venue"));
	            logEnter.setDate(rs.getString("Date"));
	            logEnter.setCusName(rs.getString("customerName"));
	            logEnter.setUserRating(rs.getString("rating"));
	            
	            logList.add(logEnter);
				
			}
			
			rs.close();
	        stmt.close();
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return logList;
		
	}
	
	public void updateLogBook(logBookModel lgModel) {
		try {
			String eventId = lgModel.getEventId();
			String venue = lgModel.getVenue();
			String date = lgModel.getDate();
			String cusName = lgModel.getCusName();
			String userRating = lgModel.getUserRating();
			
			LogBookDBconnect logdb = new LogBookDBconnect();
			
			Statement stmt = logdb.getConnection().createStatement();
			
			String sql = "UPDATE event_log_book SET EvendId='"+eventId+"', venue='"+venue+"', Date='"+date+"', customerName='"+cusName+"', rating='"+userRating+"' WHERE EvendId='"+eventId+"'";
			
			stmt.executeUpdate(sql);
			
			stmt.close();
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}
	
	public void deleteLogBook(logBookModel lgModel) {
		try {
			String eventId = lgModel.getEventId();
			
			LogBookDBconnect logdb = new LogBookDBconnect();
			
			Statement stmt = logdb.getConnection().createStatement();
			
			String sql = "DELETE FROM event_log_book WHERE EvendId='"+eventId+"'";
			
			stmt.executeUpdate(sql);
			
			stmt.close();
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
	}

}
