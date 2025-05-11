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

@WebServlet("/LogBookServlet")
public class LogBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LogBookServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		logBookModel lgModel = new logBookModel();
		
		lgModel.setEventId(request.getParameter("EvendId"));
		lgModel.setVenue(request.getParameter("venue"));
		lgModel.setDate(request.getParameter("Date"));
		lgModel.setCusName(request.getParameter("customerName"));
		lgModel.setUserRating(request.getParameter("rating"));
		
		LogBookServices service = new LogBookServices();
		
		service.insertLogBook(lgModel);
		
		RequestDispatcher dis = request.getRequestDispatcher("logBookView.jsp");
		
		dis.forward(request, response);
	}

}
