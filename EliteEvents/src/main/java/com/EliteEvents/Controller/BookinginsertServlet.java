package com.EliteEvents.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.BookingDAO;

//@WebServlet("/BookinginsertServlet")
public class BookinginsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		// Get parameters from the form
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String conNumber = request.getParameter("conNumber");
		String date = request.getParameter("date");
		String specRequirment = request.getParameter("specRequirment");
		
		// Call the insert method
        boolean isSuccess = BookingDAO.insertBooking(fullName, email, conNumber, date, specRequirment);
		
        if (isSuccess) {
            response.sendRedirect("booking");
        } else {
            response.sendRedirect("error.jsp");
        }
		
	}

}
