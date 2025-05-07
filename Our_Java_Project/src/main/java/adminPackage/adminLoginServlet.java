package adminPackage;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
        	else if ("evec".equals(username) && "evec1".equals(password)) 
        	{
            // Redirect to Admin 2's page
            RequestDispatcher dis = request.getRequestDispatcher("event_creater_interface.jsp");
            dis.forward(request, response);
        } 
        	else if ("evem".equals(username) && "evem1".equals(password)) 
        	{
            // Redirect to Admin 3's page
            RequestDispatcher dis = request.getRequestDispatcher("event_manage_interface.jsp");
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
