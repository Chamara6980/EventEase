package adminPackage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get username and password from the login form
        String username = request.getParameter("EC_Username");
        String password = request.getParameter("EC_Password");

        // Redirect based on admin credentials
        if ("ccagent".equals(username) && "admin123".equals(password)) 
        {
            // Redirect to Admin 1's page
            RequestDispatcher dis = request.getRequestDispatcher("customer_Care_agent_interface.jsp");
            dis.forward(request, response);
        } 
        	else if ("admin2".equals(username) && "admin456".equals(password)) 
        	{
            // Redirect to Admin 2's page
            RequestDispatcher dis = request.getRequestDispatcher("AdminLogin2.jsp");
            dis.forward(request, response);
        } 
        	else if ("admin3".equals(username) && "admin789".equals(password)) 
        	{
            // Redirect to Admin 3's page
            RequestDispatcher dis = request.getRequestDispatcher("AdminPage3.jsp");
            dis.forward(request, response);
        } 
        	else if ("admin4".equals(username) && "admin101".equals(password)) 
        {
            // Redirect to Admin 4's page
            RequestDispatcher dis = request.getRequestDispatcher("AdminPage4.jsp");
            dis.forward(request, response);
        } 
        	else 
        {
            // Invalid credentials, redirect back to login page with error message
            request.setAttribute("error", "Invalid username or password");
            RequestDispatcher dis = request.getRequestDispatcher("AdminLoginError.jsp");
            dis.forward(request, response);
        }
	}

}
