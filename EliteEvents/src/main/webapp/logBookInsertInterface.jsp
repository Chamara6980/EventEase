<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Log Book Insert</title>

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
        .form-container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 30px;
            max-width: 600px;
        }
        label {
            font-weight: 600;
        }
        input[type="text"] {
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #702963;
            color: white;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #5d2153;
        }
        
        h2 {
            margin-top: 30px;
            color: #702963;
            text-align: center;
            font-size: 2rem;
            font-weight: bold;
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

<!-- Form Container -->
<div class="container form-container">
    <h2 >Log Report</h2><br>
    <form action="logbookinsert" method="post" name="formDetails">
        <div class="mb-3">
            <label for="EventId" class="form-label">Event ID:</label>
            <input type="text" class="form-control" placeholder="Event ID" name="EvendId" required>
        </div>
        
        <div class="mb-3">
            <label for="venue" class="form-label">Venue:</label>
            <input type="text" class="form-control" placeholder="Event Venue" name="venue" required>
        </div>
        
        <div class="mb-3">
            <label for="date" class="form-label">Date:</label>
            <input type="text" class="form-control" placeholder="Date (YYYY-MM-DD)" name="Date" required>
        </div>
        
        <div class="mb-3">
            <label for="customerName" class="form-label">Customer Name:</label>
            <input type="text" class="form-control" placeholder="Customer Name" name="customerName" required>
        </div>
        
        <div class="mb-3">
            <label for="rating" class="form-label">User Rating (0-5):</label>
            <input type="text" class="form-control" placeholder="0 - 5" name="rating" min="0" max="5" required>
        </div>

        <div class="text-center">
            <input type="submit" id="addBtn" value="ADD" name="add" class="btn btn-primary w-50">
        </div>
    </form>
</div>

<!-- Footer with same color as header -->
<footer style="background-color: #702963;" class="text-white mt-5 pt-4 pb-2">
    <div class="container text-center">
        <div class="row">
            <div class="col-md-4 mb-3">
                <h5>EventMaster</h5>
                <p>Creating unforgettable experiences through seamless event management.</p>
            </div>
            <div class="col-md-4 mb-3">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#" class="text-white text-decoration-none">Home</a></li>
                    <li><a href="#" class="text-white text-decoration-none">Events</a></li>
                    <li><a href="#" class="text-white text-decoration-none">Packages</a></li>
                    <li><a href="#" class="text-white text-decoration-none">Contact Us</a></li>
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
        <hr class="bg-light">
        <p class="mb-0">&copy; 2025 EventMaster. All Rights Reserved.</p>
    </div>
</footer>

</body>
</html>
