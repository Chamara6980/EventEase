package com.EliteEvents.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.EliteEvents.DBUtil.DBUtil;
import com.EliteEvents.Model.Booking;

public class BookingDAO {

	public static List<Booking> getAllBooking() {
		List<Booking> bookings = new ArrayList<>();
		try {
			Connection conn = DBUtil.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "select * from booking";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String fullName = rs.getString(2);
				String email = rs.getString(3);
				String conNumber = rs.getString(4);
				String date = rs.getString(5);
				String specRequirment = rs.getString(6);

				Booking book = new Booking(id, fullName, email, conNumber, date, specRequirment);
				bookings.add(book);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bookings;
	}

	public static boolean insertBooking(String fullName, String email, String conNumber, String date,
			String specRequirment) {
		String sql = "Insert into booking (fullname, email, conNumber, date, specRequirment) values (?,?,?,?,?)";
		try (Connection con = DBUtil.getConnection(); 
				PreparedStatement ps = con.prepareStatement(sql)) {

			ps.setString(1, fullName);
			ps.setString(2, email);
			ps.setString(3, conNumber);
			ps.setString(4, date);
			ps.setString(5, specRequirment);

			int rowAffected = ps.executeUpdate();
			return rowAffected > 0;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public static Booking getBookingById(int id) {
		Booking booking = null;
		try (Connection conn = DBUtil.getConnection();
				PreparedStatement ps = conn.prepareStatement("SELECT * FROM booking WHERE id = ?")) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				booking = new Booking(
						rs.getInt("id"), 
						rs.getString("fullname"), 
						rs.getString("email"),
						rs.getString("conNumber"), 
						rs.getString("date"), 
						rs.getString("specRequirment"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return booking;
	}

	public static boolean updateBooking(Booking booking) {
		boolean success = false;
		String sql = "UPDATE booking SET fullname=?, email=?, conNumber=?, date=?, specRequirment=? WHERE id=?";
		try (Connection conn = DBUtil.getConnection(); 
				PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, booking.getFullName());
			ps.setString(2, booking.getEmail());
			ps.setString(3, booking.getConNumber());
			ps.setString(4, booking.getDate());
			ps.setString(5, booking.getSpecRequirment());
			ps.setInt(6, booking.getId());
			success = ps.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return success;

	}
	
	public static boolean deleteBooking(int id) {
	    boolean success = false;
	    String sql = "DELETE FROM booking WHERE id = ?";
	    try (Connection conn = DBUtil.getConnection();
	         PreparedStatement ps = conn.prepareStatement(sql)) {
	        ps.setInt(1, id);
	        success = ps.executeUpdate() > 0;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return success;
	}

}
