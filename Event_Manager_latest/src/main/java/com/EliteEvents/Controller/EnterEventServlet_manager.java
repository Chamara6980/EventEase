package com.EliteEvents.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.EventDBUtil_manager;
import com.EliteEvents.Model.Event_manager;

@WebServlet("/EnterEventServlet_manager")
public class EnterEventServlet_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		 
		String event_id = request.getParameter("event_id");
		String pck_id = request.getParameter("pck_id");     //enterevent.jsp eke input eke names pass karanna//
		
		boolean isTrue;
		
		isTrue = EventDBUtil_manager.validate(event_id, pck_id);
		
		if (isTrue == true ) {
			
			List<Event_manager> eventDetails = EventDBUtil_manager.getEvent(event_id);
			request.setAttribute("eventDetails", eventDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ShowEvent_manager.jsp");
			
			dis.forward(request, response);
			
			
		}
		
		
		else {
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Event Id or package Id is incorrect');");
			out.println("location='EnterEvent_manager.jsp'");
			out.println("</script>");
		}
		
	}

}
