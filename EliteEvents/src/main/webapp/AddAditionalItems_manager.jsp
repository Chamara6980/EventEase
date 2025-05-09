<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Additional Items</title>

  
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

        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.5rem;
            color: #702963;
        }

        form {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 1rem;
            padding: 30px;
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: 500;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 0.5rem;
            font-size: 1.1rem;
        }

        input[type="text"] {
            border: 1px solid #ced4da;
            background-color: #f8f9fa;
        }

        input[type="submit"] {
            background-color: #702963;
            color: #fff;
            border: none;
            font-weight: bold;
            transition: background-color 0.3s ease-in-out;
        }

        input[type="submit"]:hover {
            background-color: #5a1f50;
        }

        .redirect-button {
            display: block;
            margin: 30px auto;
            padding: 12px 24px;
            width:40%;
            background: linear-gradient(to right, #66bb6a, #43a047);
            color: white;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: bold;
            border-radius: 0.5rem;
            text-align: center;
            transition: background 0.3s ease-in-out, transform 0.2s ease-in-out;
        }

        .redirect-button:hover {
            background: linear-gradient(to right, #43a047, #66bb6a);
            transform: scale(1.05);
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark shadow" style="background-color: #702963;">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">EventMaster</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="homepage.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Events</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Packages</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                <li class="nav-item"><a class="btn btn-outline-light ms-2" href="admin_Login_page.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>



<div class="container my-5">
    <h1>Add Additional Items</h1>
    <form action="AddItemsServlet_manager" method="post">
        <label for="pck_id">Package ID</label>
        <input type="text" name="pck_id" placeholder="Enter Package ID">

        <label for="pck_name">Package Name</label>
        <input type="text" name="pck_name" placeholder="Enter Package Name">

        <label for="type">Type</label>
        <input type="text" name="type" placeholder="Enter Type">

        <label for="Extraitems">Additional Items</label>
        <input type="text" name="Extraitems" placeholder="Enter Additional Items">

        <label for="price">Price</label>
        <input type="text" name="price" placeholder="Enter Price">

        <input type="submit" name="submit" value="Add Additional Items">
    </form>

    <a href="ManagerHome.jsp" class="redirect-button">Go to Home Page</a>
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
