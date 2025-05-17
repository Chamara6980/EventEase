package com.EliteEvents.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.UserDAO;
import com.EliteEvents.Model.User;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDao = new UserDAO();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			User user = new User();
			user.setUsername(request.getParameter("username"));
			user.setEmail(request.getParameter("email"));
			user.setPhone(request.getParameter("phone"));
			user.setPassword(request.getParameter("password"));

			if (userDao.registerUser(user)) {
				response.sendRedirect("login.jsp?reg=success");
			} else {
				response.sendRedirect("register.jsp?error=1");
			}
//		} else if ("login".equals(action)) {
//			
//		}
	}

}
