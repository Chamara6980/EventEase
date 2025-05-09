package com.EliteEvents.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.EventDBUtil_manager;
import com.EliteEvents.Model.Event_manager;


@WebServlet("/UpdateItemsServlet_manager")
public class UpdateItemsServlet_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String event_id = request.getParameter("evtid");  //updateitems.jsp eke form eke input type wala name eka denna//
		String pck_id = request.getParameter("pck_id");
		String pck_name = request.getParameter("pck_name");
		String type = request.getParameter("type");
		String items = request.getParameter("Additems");
		String price = request.getParameter("Addprice");
		
		boolean isTrue;
		
		isTrue = EventDBUtil_manager.updateEvent(event_id, pck_id, pck_name, type, items, price);
		
		if (isTrue == true) {
			
			List<Event_manager> eventDetails = EventDBUtil_manager.getEventDetails(event_id);
			
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ShowEvent_manager.jsp");
			
			dis.forward(request, response);
		}
		
		
		else {
			
			List<Event_manager> eventDetails = EventDBUtil_manager.getEventDetails(event_id);
			
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ShowEvent_manager.jsp");
			
			dis.forward(request, response);
			
		}
		
	}


}
