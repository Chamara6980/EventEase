package com.EliteEvents.Dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.EliteEvents.Model.EventPackages;

public class EventPackagesDao {

    private final String dburl = "jdbc:mysql://127.0.0.1:3306/eventease_database";
    private final String dbUsername = "root";
    private final String dbPassword = "Chamara123@";
    private final String dbDriver = "com.mysql.cj.jdbc.Driver";

    public EventPackagesDao() {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(dburl, dbUsername, dbPassword);
    }

    // CREATE
    public String insert(EventPackages pkg) {
        String sql = "INSERT INTO event_creater_packages (Package_Id, Package_Name, Type, Venue, Items, Price) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, pkg.getPackage_Id());
            ps.setString(2, pkg.getPackage_Name());
            ps.setString(3, pkg.getType());
            ps.setString(4, pkg.getVenue());
            ps.setString(5, pkg.getItems());
            ps.setString(6, pkg.getPrice());
            int rowsInserted = ps.executeUpdate();
            return (rowsInserted > 0) ? "Data Entered" : "Data not Entered";
        } catch (SQLException e) {
            e.printStackTrace();
            return "Data not Entered";
        }
    }

    // READ ALL
    public List<EventPackages> getAllPackages() {
        List<EventPackages> packageList = new ArrayList<>();
        String sql = "SELECT * FROM event_creater_packages";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                packageList.add(new EventPackages(
                        rs.getInt("Package_Id"),
                        rs.getString("Package_Name"),
                        rs.getString("Type"),
                        rs.getString("Venue"),
                        rs.getString("Items"),
                        rs.getString("Price")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return packageList;
    }

    // READ ONE
    public EventPackages getPackageById(int id) {
        EventPackages pkg = null;
        String sql = "SELECT * FROM event_creater_packages WHERE Package_Id = ?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    pkg = new EventPackages(
                            rs.getInt("Package_Id"),
                            rs.getString("Package_Name"),
                            rs.getString("Type"),
                            rs.getString("Venue"),
                            rs.getString("Items"),
                            rs.getString("Price")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pkg;
    }

    // UPDATE
    public String updatePackage(EventPackages pkg) {
        String sql = "UPDATE event_creater_packages SET Package_Name=?, Type=?, Venue=?, Items=?, Price=? WHERE Package_Id=?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, pkg.getPackage_Name());
            ps.setString(2, pkg.getType());
            ps.setString(3, pkg.getVenue());
            ps.setString(4, pkg.getItems());
            ps.setString(5, pkg.getPrice());
            ps.setInt(6, pkg.getPackage_Id());
            int rowsUpdated = ps.executeUpdate();
            return (rowsUpdated > 0) ? "Updated" : "Update Failed";
        } catch (SQLException e) {
            e.printStackTrace();
            return "Update Failed";
        }
    }

    // UPDATE (by fields)
    public boolean updatePackage(int id, String name, String type, String venue, String items, double price) {
        String sql = "UPDATE event_creater_packages SET Package_Name = ?, Type = ?, Venue = ?, Items = ?, Price = ? WHERE Package_Id = ?";
        try (Connection con = getConnection();
             PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, name);
            stmt.setString(2, type);
            stmt.setString(3, venue);
            stmt.setString(4, items);
            stmt.setDouble(5, price);
            stmt.setInt(6, id);
            int rowsUpdated = stmt.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // DELETE
    public boolean deletePackage(int id) {
        String sql = "DELETE FROM event_creater_packages WHERE Package_Id = ?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            int affectedRows = ps.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
 // Checks whether the Package_Id already exists
    public boolean isPackageIdExists(int id) {
        boolean exists = false;
        try {
            Connection con = getConnection();
            String sql = "SELECT Package_Id FROM event_packages WHERE Package_Id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            exists = rs.next(); // true if there's a record
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return exists;
    }

}
