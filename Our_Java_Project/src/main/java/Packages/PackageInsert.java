package Packages;

import java.sql.*;
import java.util.*;

public class PackageInsert {

    private String dburl = "jdbc:mysql://localhost:3306/eventease_database";
    private String dbUsername = "root";
    private String dbPassword = "Chamara123@"; 
    private String dbDriver = "com.mysql.cj.jdbc.Driver"; 

    // Load the JDBC driver
    public void loadDriver(String dbDriver) {
        try {
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    // Get database connection
    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dburl, dbUsername, dbPassword);
        } catch (SQLException e) {
            System.out.println("DB Connection Error: " + e.getMessage());
            e.printStackTrace();
        }
        return con;
    }

    // Insert new package
    public String insert(Event_Creater_Packages pkg) {
        loadDriver(dbDriver);
        try (Connection con = getConnection()) {
            if (con == null) {
                return "Database connection failed";
            }

            String sql = "INSERT INTO Event_Creater_Packages (Package_Id, Package_Name, Type, Venue, Items, Price) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, pkg.getPackage_Id());
                ps.setString(2, pkg.getPackage_Name());
                ps.setString(3, pkg.getType());
                ps.setString(4, pkg.getVenue());
                ps.setString(5, pkg.getItems());
                ps.setString(6, pkg.getPrice());

                int rowsInserted = ps.executeUpdate();
                return (rowsInserted > 0) ? "Data Entered" : "Data not Entered";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return "Data not Entered";
        }
    }

    

}
