package com.EliteEvents.AdminLogin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("EC_Username");
        String password = request.getParameter("EC_Password");

        HttpSession session = request.getSession();

        if ("ccagent".equals(username) && "admin123".equals(password)) {
            session.setAttribute("username", username);
            RequestDispatcher dis = request.getRequestDispatcher("customerCareAgent.jsp");
            dis.forward(request, response);
        } else if ("evec".equals(username) && "evec1".equals(password)) {
            session.setAttribute("username", username);
            RequestDispatcher dis = request.getRequestDispatcher("event_creater_interface.jsp");
            dis.forward(request, response);
        } else if ("evem".equals(username) && "evem1".equals(password)) {
            session.setAttribute("username", username);
            RequestDispatcher dis = request.getRequestDispatcher("ManagerHome.jsp");
            dis.forward(request, response);
        } else {
            request.setAttribute("error", "Invalid username or password");
            RequestDispatcher dis = request.getRequestDispatcher("AdminLoginError.jsp");
            dis.forward(request, response);
        }
	}
}

