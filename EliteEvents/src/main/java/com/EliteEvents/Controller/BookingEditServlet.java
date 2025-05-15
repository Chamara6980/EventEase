package com.EliteEvents.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.BookingDAO;
import com.EliteEvents.Model.Booking;

//@WebServlet("/BookingEditServlet")
public class BookingEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int bookingId = Integer.parseInt(request.getParameter("id"));
		Booking booking = BookingDAO.getBookingById(bookingId);
		request.setAttribute("booking", booking);
		RequestDispatcher dispatcher = request.getRequestDispatcher("booking-edit.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String fullName = request.getParameter("fullName");
		String email = request.getParameter("email");
		String conNumber = request.getParameter("conNumber");
		String date = request.getParameter("date");
		String specRequirment = request.getParameter("specRequirment");

		Booking booking = new Booking(id, fullName, email, conNumber, date, specRequirment);
		boolean success = BookingDAO.updateBooking(booking);

		if (success) {
			response.sendRedirect("booking"); // Redirect to booking list
		} else {
			request.setAttribute("errorMessage", "Update failed!");
			doGet(request, response);
		}
	}

}

