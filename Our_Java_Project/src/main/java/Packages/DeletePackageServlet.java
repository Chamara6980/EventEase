package Packages;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

public class DeletePackageServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("packageId"));

        boolean success = DeletePackageDetails.deletePackage(id);

        if (success) {
            response.sendRedirect("view");
        } else {
            response.sendRedirect("Package_Delete_Unsuccess.jsp");
        }
    }
}
