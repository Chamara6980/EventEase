package Packages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UpdatePackageDetails {

    // Method to update
    public static boolean updatePackage(int id, String name, String type, String venue, String items, double price) {
        Connection con = null;
        PreparedStatement stmt = null;
        boolean updated = false;

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Set up database connection (change DB name, username, password as per your setup)
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/eventease_database", "root", "Chamara123@");

            // SQL query to update
            String sql = "UPDATE event_creater_packages SET Package_Name = ?, Type = ?, Venue = ?, Items = ?, Price = ? WHERE Package_ID = ?";
            stmt = con.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, type);
            stmt.setString(3, venue);
            stmt.setString(4, items);
            stmt.setDouble(5, price);
            stmt.setInt(6, id);

            int rowsUpdated = stmt.executeUpdate();
            if (rowsUpdated > 0) {
                updated = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return updated;
    }
    public static Event_Creater_Packages getPackageById(int id) {
        Event_Creater_Packages pkg = null;
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventease_database", "root", "Chamara123@");
            String sql = "SELECT * FROM event_creater_packages WHERE Package_ID = ?";
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id);

            rs = stmt.executeQuery();

            if (rs.next()) {
                pkg = new Event_Creater_Packages(
                        rs.getInt("Package_ID"),
                        rs.getString("Package_Name"),
                        rs.getString("Type"),
                        rs.getString("Venue"),
                        rs.getString("Items"),
                        rs.getString("Price")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return pkg;
    }

    public static List<Event_Creater_Packages> getAllPackages() {
        List<Event_Creater_Packages> packageList = new ArrayList<>();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {          
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventease_database", "root", "Chamara123@");
            String sql = "SELECT * FROM event_creater_packages";
            stmt = con.prepareStatement(sql);

            rs = stmt.executeQuery();

            while (rs.next()) {
                
                Event_Creater_Packages pkg = new Event_Creater_Packages(
                        rs.getInt("Package_ID"),
                        rs.getString("Package_Name"),
                        rs.getString("Type"),
                        rs.getString("Venue"),
                        rs.getString("Items"),
                        rs.getString("Price")
                );
                packageList.add(pkg);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return packageList;
    }
}

