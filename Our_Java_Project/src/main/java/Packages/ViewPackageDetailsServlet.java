package Packages;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.*;

import Packages.Event_Creater_Packages;

public class ViewPackageDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Event_Creater_Packages> packageList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eventease_database", "root", "Chamara123@");

            String sql = "SELECT * FROM Event_Creater_Packages";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Event_Creater_Packages p = new Event_Creater_Packages(
                    rs.getInt("Package_Id"),
                    rs.getString("Package_Name"),
                    rs.getString("Type"),
                    rs.getString("Venue"),
                    rs.getString("Items"),
                    rs.getString("Price")
                );
                packageList.add(p);
            }

            request.setAttribute("packageList", packageList);
            RequestDispatcher rd = request.getRequestDispatcher("viewPackages.jsp");
            rd.forward(request, response);

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
