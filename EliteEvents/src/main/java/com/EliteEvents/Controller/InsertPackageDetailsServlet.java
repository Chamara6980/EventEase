package com.EliteEvents.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.EventPackagesDao;
import com.EliteEvents.Model.EventPackages;

public class InsertPackageDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("Package_Id"));
            String name = request.getParameter("Package_Name");
            String type = request.getParameter("Type");
            String venue = request.getParameter("Venue");
            String items = request.getParameter("Items");
            String price = request.getParameter("Price");

            EventPackagesDao db = new EventPackagesDao();

            // Check if the package ID already exists
            if (db.isPackageIdExists(id)) 
            
            {
                // If ID already exists – show error message
                request.setAttribute("errorMessage", "Package ID already exists and cannot be reused.");
                request.getRequestDispatcher("Package_Insertion_Unsuccess.jsp").forward(request, response);
                return;
            }

            EventPackages pkg = new EventPackages(id, name, type, venue, items, price);
            String result = db.insert(pkg);

            if ("Data Entered".equals(result)) {
                request.getRequestDispatcher("Package_Insertion_Success.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("Package_Insertion_Unsuccess.jsp").forward(request, response);
            }

        } 
        	catch (Exception e) 
        {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred during insertion.");
            
            request.getRequestDispatcher("Package_Insertion_Unsuccess.jsp").forward(request, response);
        }
    }
}
