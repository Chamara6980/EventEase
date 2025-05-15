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
	        
	        // Set response type and prepare output writer
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        // Retrieve parameters from the request
	        String event_id = request.getParameter("event_id");
	        String pck_id = request.getParameter("pck_id"); // Match input names in EnterEvent.jsp

	        boolean isValid;

	        try {
	            // Validate Event ID and Package ID
	            isValid = EventDBUtil_manager.validate(event_id, pck_id);

	            if (isValid) {
	                // If valid, retrieve event details and forward to ShowEvent.jsp
	                List<Event_manager> eventDetails = EventDBUtil_manager.getEvent(event_id);
	                request.setAttribute("eventDetails", eventDetails);

	                RequestDispatcher dispatcher = request.getRequestDispatcher("ShowEvent_manager.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                // If validation fails, show alert and redirect back to EnterEvent.jsp
	                out.println("<script type='text/javascript'>");
	                out.println("alert('Your Event ID or Package ID is incorrect. Please try again.');");
	                out.println("location='EnterEvent_manager.jsp';");
	                out.println("</script>");
	            }
	        } catch (Exception e) {
	            // Handle unexpected exceptions
	            e.printStackTrace();
	            out.println("<script type='text/javascript'>");
	            out.println("alert('An error occurred while processing your request. Please try again later.');");
	            out.println("location='EnterEvent_manager.jsp';");
	            out.println("</script>");
	        } finally {
	            // Close resources if needed
	            out.close();
	        }
	    }
}