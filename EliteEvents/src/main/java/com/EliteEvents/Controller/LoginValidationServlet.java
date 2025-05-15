package com.EliteEvents.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.EliteEvents.Dao.UserDAO;

//@WebServlet("/LoginValidationServlet")
public class LoginValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private UserDAO userDao;
	 
	 @Override
	    public void init() throws ServletException {
	        userDao = new UserDAO();
	    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (userDao.validateUser(username, password)) {
			request.getSession().setAttribute("username", username);
			response.sendRedirect("homepage.jsp");
			
		} else {
			response.sendRedirect("error.jsp?error=1");
		}
	}

}
