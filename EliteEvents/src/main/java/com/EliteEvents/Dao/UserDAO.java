package sliit.eventmng.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import sliit.eventmng.DBUtil.DBUtil;
import sliit.eventmng.model.User;

public class UserDAO {

	public boolean registerUser(User user) {

		String query = "INSERT INTO users (username, email, phone, password) VALUES (?, ?, ?,?)";
		try (Connection con = DBUtil.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPhone());
			ps.setString(4, user.getPassword());
			return ps.executeUpdate() > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean validateUser(String username, String password) {
		String query = "SELECT * FROM users WHERE username=? AND password=?";
		try (Connection con = DBUtil.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			return rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
