<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Manager Dashboard</title>
    
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
    
    <style>
        body {
            background: linear-gradient(to right, #f2f2f2, #e6f2ff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            border-radius: 1rem;
        }
        .form-label {
            font-weight: 500;
        }
        .btn-success, .btn-primary {
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



<div class="container shadow-lg my-5 p-4 rounded-3" style="background-color: #fff; border: 1px solid #ddd; max-width: 600px; height: 500px;">
  
  
    <div class="text-center mb-4" style="margin-top: 50px;">
        <h1 class="fw-bold" style="color: #702963;">Welcome, Event Manager!</h1>
        <p class="text-muted">Manage your events and resources seamlessly with EventMaster.</p>
    </div>
    <div class="d-flex flex-column align-items-center justify-content-center h-100">
        <a href="EnterEvent_manager.jsp" class="d-block mb-3 w-100">
            <button type="button" class="btn btn-primary w-100 py-3" style="border-radius: 0.75rem; background-color:  #D4AF37; border-color: #702963;">
                <i class="bi bi-calendar-event me-2"></i> Check Events
            </button>
        </a>
        <a href="AddAditionalItems_manager.jsp" class="d-block w-100">
            <button type="button" class="btn btn-success w-100 py-3" style="border-radius: 0.75rem; background-color: #702963; border-color: #28a745;">
                <i class="bi bi-box-seam me-2"></i> Add Extra Items
            </button>
        </a>
    </div>
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
