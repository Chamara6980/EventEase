package com.EliteEvents.Dao;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.EliteEvents.Model.Event_manager;

public class EventDBUtil_manager {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
public static boolean validate(String event_id , String pck_id) {
	
	
		int convertedID = Integer.parseInt(event_id.trim());
		
		try {
			con = DBConnect_manager.getConnection();
			stmt = con.createStatement();
			String sql = "select * from event_manager_new where event_id = '"+convertedID+"' and Pck_id = '"+pck_id+"' ";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}


public static List<Event_manager> getEvent(String event) {
	
	ArrayList<Event_manager> event1 = new ArrayList<>();
	
	int convertedID = Integer.parseInt(event.trim());
	
	try {
		
		con = DBConnect_manager.getConnection();
		stmt = con.createStatement();
		String sql = "select * from event_manager_new where event_id = '"+convertedID+"' ";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int event_id = rs.getInt(1);
			String pck_id = rs.getString(2);
			String pck_name = rs.getString(3);
			String type = rs.getString(4);
			String items = rs.getString(5);
			String price = rs.getString(6);
			
			Event_manager evt = new Event_manager(event_id, pck_id , pck_name, type , items , price);
			
			event1.add(evt);
		}
		
	} catch (Exception e) {
		
	}
	
	return event1;	
}



public static boolean AddItems (String pck_id , String pck_name , String type , String items, String price) {

	
	boolean isSuccess = false;
	
	
	try {
		
		con = DBConnect_manager.getConnection();
		
		stmt = con.createStatement();
		
		String sql = " INSERT INTO event_manager_new VALUES (0 , '"+pck_id+"', '"+pck_name+"' , '"+type+"' , '"+items+"' , '"+price+"' ) ";
		
		
		int rs = stmt.executeUpdate(sql);
		
		if (rs > 0 ) {
			
			isSuccess = true;
		}
		
		else {
			
			isSuccess = false;
		}
		
		
	} 
	catch (Exception e) {
		
		e.printStackTrace();
	}
	
	
	return isSuccess;
	
	}

	
	
public static boolean updateEvent(String event_id ,String pck_id , String pck_name , String type , String items , String price) {

	
	try {
		

		con = DBConnect_manager.getConnection();
		
		stmt = con.createStatement();
		
		String sql = " UPDATE event_manager_new SET pck_id = '"+pck_id+"' , pck_name = '"+pck_name+"' , type = '"+type+"' , items = '"+items+"' , price = '"+price+"' WHERE event_id = '"+event_id+"' " ;                                
		
		// + " WHERE id = '"+id+"' "; // 
		
		int rs = stmt.executeUpdate(sql);
		
		
		if (rs > 0 ) {
			
			isSuccess = true;
		}
		
		else {
			
			isSuccess = false;
		}
		

		 
	} catch (Exception e){
		
		e.printStackTrace();
	} 
	
	
	
	return isSuccess;
	
	}

	public static List<Event_manager> getEventDetails(String Id) {
		
		int convertedID = Integer.parseInt(Id.trim());
		
		ArrayList<Event_manager> evt = new ArrayList();
		
		
		try {
			
			con = DBConnect_manager.getConnection();
			
			stmt = con.createStatement();
			
			String sql = " SELECT * FROM event_manager_new WHERE event_id = '"+convertedID+"' "; //cenvert karapu id eka store kala varible eka pass karanna//
			
			rs = stmt.executeQuery(sql);  //select ekata executequery denna , not execute update //
			
			
			while(rs.next()) {
				
				int event_id = rs.getInt(1);
				String pck_id = rs.getString(2);
				String pck_name = rs.getString(3);
				String type = rs.getString(4);
				String items = rs.getString(5);
				String price = rs.getString(6);
				
				
				//customer class eke constructor eke parameters pass karanawa pahala new object eke//
				
				Event_manager e = new Event_manager(event_id , pck_id , pck_name ,type ,items , price);
				
				
				 // while loop eken gathth data evt arraylist ekata pass karanawa//
				
				evt.add(e);
			}
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return evt;
		
	
	}
		
	
	
	public static boolean deleteEvent(String id) {
		
		
		int convID = Integer.parseInt(id.trim());
		
		
		try {
			
			con = DBConnect_manager.getConnection();
			
			stmt = con.createStatement();
			
			String sql = " DELETE FROM event_manager_new WHERE event_id = '"+convID+"' ";
		
			int r = stmt.executeUpdate(sql);
			
			
			if (r > 0) {
				
				isSuccess = true;
				
			}
			
			else {
				
				isSuccess = false;
			}
				
				
			
		} catch (Exception e) {
			
			
			
		}

		
		return isSuccess;
		
	}


}