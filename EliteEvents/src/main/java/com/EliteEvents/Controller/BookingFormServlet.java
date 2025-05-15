package com.EliteEvents.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/BookingFormServlet")
public class BookingFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		String username = (session != null) ? (String) session.getAttribute("username") : null;
		if (username == null) {
            // Not logged in, redirect to login page with a message
            response.sendRedirect("login.jsp?error=Please+login+to+book+an+event");
            return;
        }
		
		// User is logged in, forward to booking form JSP
        String eventId = request.getParameter("eventId");
        request.setAttribute("eventId", eventId);
		// Forward to booking form JSP
		RequestDispatcher dispatcher = request.getRequestDispatcher("booking-form.jsp");
		dispatcher.forward(request, response);
	}

}
