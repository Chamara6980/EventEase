package com.EliteEvents.AdminLogin;



import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class adminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // db connect
    private static final String DB_URL = "jdbc:mysql://localhost:3306/eventease_database";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "Chamara123@";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");

        
        //if user enter null value or wrong credentials,navigates to login page again
        if (username == null || password == null || username.isEmpty() || password.isEmpty()) {
            request.setAttribute("error", "Please enter both username and password.");
            request.getRequestDispatcher("admin_Login.jsp").forward(request, response);
            return;
        }

        boolean isValidUser = false;
        String redirectPage = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) 
            {
                // Query to check username and password
                String sql = "SELECT username FROM admins WHERE username = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    
                    

                    try (ResultSet rs = stmt.executeQuery()) {
                        if (rs.next()) {
                            isValidUser = true;

                            
                            // Redirect based on username
                            if ("ccagent".equalsIgnoreCase(username)) {
                                redirectPage = "customerCareAgent.jsp";
                            } else if ("evec".equalsIgnoreCase(username)) {
                                redirectPage = "event_creater_interface.jsp";
                            } else if ("evem".equalsIgnoreCase(username)) {
                                redirectPage = "ManagerHome.jsp";
                            } else {
                                redirectPage = "admin_dashboard.jsp"; // Default page
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Internal server error. Please try again later.");
            request.getRequestDispatcher("admin_Login_error.jsp").forward(request, response);
            return;
        }

        if (isValidUser) {
            HttpSession session = request.getSession();
            session.setAttribute("adminUser", username);
            response.sendRedirect(redirectPage);
        } else {
            request.setAttribute("error", "Invalid username or password.");
            request.getRequestDispatcher("admin_Login_error.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect GET requests to login page
        response.sendRedirect("admin_Login.jsp");
    }
}
