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


@WebServlet("/DeleteEventServlet_manager")
public class DeleteEventServlet_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String event_id = request.getParameter("evtid");
		
		boolean isTrue;
		
		
		isTrue = EventDBUtil_manager.deleteEvent(event_id);
		
		if (isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ManagerHome.jsp");
			
			dispatcher.forward(request, response);
		}
		
		
		else {
			
			List<Event_manager> eventDetails = EventDBUtil_manager.getEventDetails(event_id);
			
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ShowEvent_manager.jsp");
			
			dispatcher.forward(request, response);
			
			
		}
	}

}
