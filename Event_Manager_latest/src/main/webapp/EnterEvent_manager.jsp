<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enter Event</title>
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #ffffff, #d3d3d3);
        }

        .form-container {
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 30px;
            max-width: 500px;
            margin: 50px auto;
            box-shadow: 0 4px 20px rgba(88, 85, 217, 0.2);
        }

        .form-container h1 {
            color: #5e35b1;
            margin-bottom: 20px;
        }

        .form-container label {
            font-size: 1.1rem;
            color: #4527a0;
        }

        .form-container input[type="text"] {
            background: #ede7f6;
            border: 1px solid #c5cae9;
            border-radius: 8px;
            color: #4a4a4a;
        }

        .form-container input[type="text"]:focus {
            border-color: #7e57c2;
        }

        .form-container button[type="submit"] {
            background: #007bff; 
            border: none;
            border-radius: 8px;
            color: #ffffff;
        }

        .form-container button[type="submit"]:hover {
            background: #0056b3; 
            transform: scale(1.02);
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


<div class="form-container">
    <h1 class="text-center">Enter Event</h1>
    <form action="EnterEventServlet_manager" method="post">
        <label for="event_id">Event ID</label>
        <input type="text" id="event_id" name="event_id" placeholder="Enter Event ID" required class="form-control mb-3">

        <label for="pck_id">Package ID</label>
        <input type="text" id="pck_id" name="pck_id" placeholder="Enter Package ID" required class="form-control mb-3">

        <button type="submit" name="submit" class="btn btn-primary w-100">
            <i class="bi bi-check-circle"></i> Enter
        </button>
    </form>
    <a href="ManagerHome.jsp" class="btn btn-success w-100 mt-3">
        <i class="bi bi-arrow-left-circle"></i> Go to Home Page
    </a>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
