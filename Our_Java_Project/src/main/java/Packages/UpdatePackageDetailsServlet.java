package Packages;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class UpdatePackageDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("packageId"));
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String venue = request.getParameter("venue");
        String items = request.getParameter("items");
        double price = Double.parseDouble(request.getParameter("price"));

        // update method
        boolean success = UpdatePackageDetails.updatePackage(id, name, type, venue, items, price);
        
        if (success) {
            List<Event_Creater_Packages> packageList = UpdatePackageDetails.getAllPackages();
            request.setAttribute("packageList", packageList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewPackages.jsp");
            dispatcher.forward(request, response);
        } 
        else {
            response.sendRedirect("Package_Update_Unsuccess.jsp");
        }
    }
}
