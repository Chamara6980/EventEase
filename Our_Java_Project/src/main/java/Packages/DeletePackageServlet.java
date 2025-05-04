package Packages;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
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
