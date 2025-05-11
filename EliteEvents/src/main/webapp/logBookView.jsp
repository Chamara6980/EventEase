<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.EliteEvents.Model.logBookModel, com.EliteEvents.Dao.LogBookServices, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Log Book Records</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    
    <!-- Internal CSS -->
    <style>
        body {
            background-color: #f9f9f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        nav.navbar {
            background-color: #702963;
        }
        nav .navbar-brand {
            font-size: 1.5rem;
        }
        nav .nav-link {
            color: #ffffff !important;
        }
        nav .btn-outline-light {
            border-color: #ffffff;
        }
        h2 {
            margin-top: 30px;
            color: #702963;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        table th, table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        table th {
            background-color: #702963;
            color: #fff;
        }
        table td {
            background-color: #f9f9f9;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        .footer {
            background-color: #702963;
            padding: 20px 0;
            color: white;
            bottom: 0;
            width: 100%;
        }
        .footer a {
            color: #ffffff;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        .footer hr {
            border-color: rgba(255, 255, 255, 0.2);
        }
        
        .btn-add-record {
	        background-color: #28a745;
	        color: white;
	        border-radius: 5px;
	        margin-top: 10px;
	        width: 200px;
	        border: none;
	        transition: background-color 0.3s ease;
	        
	    }
	
	    .btn-add-record:hover {
	        background-color: #218838;
	        color: white;
	    }
	
	    .btn-back-home {
	        background-color: #007bff;
	        color: white;
	        border-radius: 5px;
	        margin-top: 10px;
	        width: 200px;
	        border: none;
	        transition: background-color 0.3s ease;
	    }
	
	    .btn-back-home:hover {
	        background-color: #0056b3;
	        color: white;
	    }
    </style>
</head>
<body>

<!-- Header with custom background color -->
<nav class="navbar navbar-expand-lg navbar-dark shadow">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">EventMaster</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link active" href="homepage.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Events</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Packages</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                <li class="nav-item"><a class="btn btn-outline-light ms-2" href="admin_Login_page.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<h2>Log Book Records</h2>

<%
    // Fetching the log book list from the service
    LogBookServices service = new LogBookServices();
    List<logBookModel> logList = service.showLogBook();

    if (logList != null && !logList.isEmpty()) {
%>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Event Id</th>
            <th>Venue</th>
            <th>Date</th>
            <th>Customer Name</th>
            <th>Rating</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
    <%  
        // Iterating through the list to display each log
        for (logBookModel log : logList) {
    %>
        <tr>
            <td><%= log.getEventId() %></td>
            <td><%= log.getVenue() %></td>
            <td><%= log.getDate() %></td>
            <td><%= log.getCusName() %></td>
            <td><%= log.getUserRating() %></td>
            <td>
                <form action="logbookupdate" method="post" style="display:inline;">
                    <input type="hidden" name="EvendId" value="<%= log.getEventId() %>" />
                    <input type="hidden" name="venue" value="<%= log.getVenue() %>" />
                    <input type="hidden" name="Date" value="<%= log.getDate() %>" />
                    <input type="hidden" name="customerName" value="<%= log.getCusName() %>" />
                    <input type="hidden" name="rating" value="<%= log.getUserRating() %>" />
                    <button type="submit" formaction="logBookUpdate.jsp" class="btn btn-primary">Update</button>
                </form>
                
                <form action="logbookdelete" method="post" style="display:inline;">
                    <input type="hidden" name="EvendId" value="<%= log.getEventId() %>" />
                    <input type="hidden" name="venue" value="<%= log.getVenue() %>" />
                    <input type="hidden" name="Date" value="<%= log.getDate() %>" />
                    <input type="hidden" name="customerName" value="<%= log.getCusName() %>" />
                    <input type="hidden" name="rating" value="<%= log.getUserRating() %>" />
                    <button type="submit" formaction="logBookDelete.jsp" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>   
    <%  
        } 
    %>
    </tbody>
</table>

<% } else { %>
    <p class="text-center text-danger">No records found.</p>
<% } %>

<div class="text-center">
    <a href="logBookInsertInterface.jsp">
        <button class="btn-add-record">Add New Record</button>
    </a>
    <br>
    <a href="customerCareAgent.jsp">
        <button class="btn-back-home">Back to Home</button>
    </a>
    <br><br>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="container text-center">
        <div class="row">
            <div class="col-md-4 mb-3">
                <h5>EventMaster</h5>
                <p>Creating unforgettable experiences through seamless event management.</p>
            </div>
            <div class="col-md-4 mb-3">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-decoration-none">Home</a></li>
                    <li><a href="#" class="text-decoration-none">Events</a></li>
                    <li><a href="#" class="text-decoration-none">Packages</a></li>
                    <li><a href="#" class="text-decoration-none">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-md-4 mb-3">
                <h5>Follow Us</h5>
                <a href="https://web.facebook.com/" class="text-white me-2"><i class="bi bi-facebook"></i></a>
                <a href="https://x.com/" class="text-white me-2"><i class="bi bi-twitter"></i></a>
                <a href="https://www.instagram.com/" class="text-white me-2"><i class="bi bi-instagram"></i></a>
                <a href="https://lk.linkedin.com/" class="text-white"><i class="bi bi-linkedin"></i></a>
            </div>
        </div>
        <hr>
        <p class="mb-0">&copy; 2025 EventMaster. All Rights Reserved.</p>
    </div>
</footer>

</body>
</html>
