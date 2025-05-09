<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Event</title>

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #f2f2f2, #e6f2ff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .form-label {
            font-weight: 500;
        }
        .btn-danger {
            font-weight: bold;
            letter-spacing: 0.5px;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark shadow" style="background-color: #702963;">
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





<%-- Retrieve parameters from request --%>
<%
    String id = request.getParameter("event_id");
    String pck_id = request.getParameter("pck_id");
    String pck_name = request.getParameter("pck_name");
    String type = request.getParameter("type");
    String items = request.getParameter("items");
    String price = request.getParameter("price"); 
%>



<div class="container my-5 p-4 shadow-lg rounded-3" style="background-color: #fff; max-width: 700px;">
    <h1 class="text-center fw-bold mb-4 text-danger">Delete Event</h1>
    <form action="DeleteEventServlet_manager" method="post">
        <div class="mb-3">
            <label class="form-label">Event ID</label>
            <input type="text" class="form-control" name="evtid" value="<%= id %>" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Package ID</label>
            <input type="text" class="form-control" name="pck_id" value="<%= pck_id %>" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Package Name</label>
            <input type="text" class="form-control" name="pck_name" value="<%= pck_name %>" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Type</label>
            <input type="text" class="form-control" name="type" value="<%= type %>" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Additional Items</label>
            <input type="text" class="form-control" name="Additems" value="<%= items %>" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Extra Price</label>
            <input type="text" class="form-control" name="Addprice" value="<%= price %>" readonly>
        </div>
        <input type="submit" name="submit" value="Delete Event" class="btn btn-danger w-100">
    </form>
    <a href="ManagerHome.jsp" class="btn btn-success w-100 mt-3">Go to Home Page</a>
</div>






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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
