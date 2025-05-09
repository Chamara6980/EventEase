package com.EliteEvents.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EliteEvents.Dao.EventPackagesDao;
import com.EliteEvents.Model.EventPackages;

public class ViewPackageDetailsServlet extends HttpServlet 
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
    	EventPackagesDao  db = new EventPackagesDao();
        
        List<EventPackages> packageList = db.getAllPackages();
        
       
        request.setAttribute("packageList", packageList);
        request.getRequestDispatcher("viewPackages.jsp").forward(request, response);
    }
}
