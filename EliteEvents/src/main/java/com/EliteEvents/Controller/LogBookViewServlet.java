package com.EliteEvents.Controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Model.*;
import com.EliteEvents.Dao.*;


@WebServlet("/LogBookViewServlet")
public class LogBookViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LogBookServices service = new LogBookServices();
		
		List<logBookModel> logList = service.showLogBook();
		
		request.setAttribute("logList", logList);
		
		RequestDispatcher dis = request.getRequestDispatcher("logBookUpdate.jsp");
        dis.forward(request, response);
	}

}
