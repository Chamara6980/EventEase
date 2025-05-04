package Packages;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeletePackageDetails {

    // Method to delete 
    public static boolean deletePackage(int packageId) {
        boolean success = false;
        Connection con = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventease_database", "root", "Chamara123@");
            
            // SQL query to delete 
            String sql = "DELETE FROM event_creater_packages WHERE Package_ID = ?";
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, packageId);
            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                success = true; 
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

        return success; 
    }
}
