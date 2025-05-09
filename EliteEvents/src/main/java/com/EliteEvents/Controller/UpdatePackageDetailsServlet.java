package com.EliteEvents.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.EventPackagesDao;
import com.EliteEvents.Model.EventPackages;

public class UpdatePackageDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("packageId"));
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String venue = request.getParameter("venue");
        String items = request.getParameter("items");
        String price = request.getParameter("price");

        EventPackages pkg = new EventPackages(id, name, type, venue, items, price);
        EventPackagesDao  db = new EventPackagesDao();
        String result = db.updatePackage(pkg);

        if ("Updated".equals(result)) {
            List<EventPackages> packageList = db.getAllPackages();
            request.setAttribute("packageList", packageList);
            request.getRequestDispatcher("viewPackages.jsp").forward(request, response);
        } else {
            response.sendRedirect("Package_Update_Unsuccess.jsp");
        }
    }
}
