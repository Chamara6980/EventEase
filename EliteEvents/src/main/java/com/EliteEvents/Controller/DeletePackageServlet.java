package com.EliteEvents.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.EliteEvents.Dao.EventPackagesDao;

public class DeletePackageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("packageId"));
            EventPackagesDao dao = new EventPackagesDao();  
            boolean success = dao.deletePackage(id);        

            if (success) {
                response.sendRedirect("view"); 
            } else {
                response.sendRedirect("Package_Delete_Unsuccess.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace(); 
            response.sendRedirect("Package_Delete_Unsuccess.jsp");
        }
    }
}
