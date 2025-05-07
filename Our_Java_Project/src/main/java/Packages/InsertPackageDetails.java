package Packages;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

public class InsertPackageDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int packageID = Integer.parseInt(request.getParameter("Package_Id"));
            String packageName = request.getParameter("Package_Name");
            String type = request.getParameter("Type");
            String venue = request.getParameter("Venue");
            String items = request.getParameter("Items");
            String price = request.getParameter("Price");

            Event_Creater_Packages pkg = new Event_Creater_Packages(packageID, packageName, type, venue, items, price);
            PackageInsert dbc = new PackageInsert();
            String result = dbc.insert(pkg);

            if ("Data Entered".equals(result)) {
                RequestDispatcher dis = request.getRequestDispatcher("Package_Insertion_Success.jsp");
                dis.forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Insertion failed.");
                RequestDispatcher dis = request.getRequestDispatcher("Package_Insertion_Unsuccess.jsp");
                dis.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", e.getMessage());
            RequestDispatcher dis = request.getRequestDispatcher("Package_Insertion_Unsuccess.jsp");
            dis.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("insert_package.jsp");
        
        
    }
    
    
}
