package com.EliteEvents.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.EventDBUtil_manager;



@WebServlet("/AddItemsServlet_manager")
public class AddItemsServlet_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String pck_id = request.getParameter("pck_id"); 
		String pck_name = request.getParameter("pck_name");
		String type = request.getParameter("type");
		String items = request.getParameter("Extraitems");
		String price = request.getParameter("price");
		
		
		boolean isTrue ;
		
		isTrue = EventDBUtil_manager.AddItems(pck_id, pck_name, type, items, price);
		
		
		if (isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success_manager.jsp");
			
			dis.forward(request, response);
		}
		
		
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess_manager.jsp");
			
			dis2.forward(request, response);
		}
		
	}

}
