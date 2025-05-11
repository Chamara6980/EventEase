package com.EliteEvents.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Model.*;
import com.EliteEvents.Dao.*;


@WebServlet("/LogBookUpdateServlet")
public class LogBookUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		logBookModel lgModel = new logBookModel();
		
		lgModel.setEventId(request.getParameter("EvendId"));
		lgModel.setVenue(request.getParameter("venue"));
		lgModel.setDate(request.getParameter("Date"));
		lgModel.setCusName(request.getParameter("customerName"));
		lgModel.setUserRating(request.getParameter("rating"));
		
		LogBookServices service = new LogBookServices();
		
		service.updateLogBook(lgModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("logBookView.jsp");
		
		dis.forward(request, response);
		
		
		
		
		
	}

}
