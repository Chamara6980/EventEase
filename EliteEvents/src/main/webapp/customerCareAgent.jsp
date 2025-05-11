<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Care Agent Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Internal CSS -->
    <style>
        body {
            background-color: #f9f9f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
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
        }

        /* Button styles */
        .btn-custom.add-event {
            background-color: #9b3d87; 
            color: white;
            border-radius: 5px;
            width: 100%;
            padding: 15px;
            font-size: 1.1rem;
        }

        .btn-custom.view-log {
            background-color: #5a77c3;
            color: white;
            border-radius: 5px;
            width: 100%;
            padding: 15px;
            font-size: 1.1rem;
        }

        .btn-custom.check-mail {
            background-color: #f4b500;
            color: white;
            border-radius: 5px;
            width: 100%;
            padding: 15px;
            font-size: 1.1rem;
        }

        /* Hover effects for buttons */
        .btn-custom.add-event:hover {
            background-color: #702963;
            color: white;
        }

        .btn-custom.view-log:hover {
            background-color: #4167b2;
            color: white;
        }

        .btn-custom.check-mail:hover {
            background-color: #e39600;
            color: white;
        }

        .content-wrapper {
            flex: 1;
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 50px;
        }

        footer {
            background-color: #702963;
            margin-top: auto;
            padding: 20px 0;
        }

        footer a {
            color: #ffffff;
        }

        footer hr {
            border-color: rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>

    <!-- Header -->
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

    <!-- Main -->
    <div class="container mt-5">
        <div class="content-wrapper">
            <h2>Welcome to Customer Care Agent Page</h2><br>
            
            <div class="d-grid gap-3">
                <a href="logBookInsertInterface.jsp">
                    <button class="btn btn-custom add-event">Add New Event to Log Book Records</button>
                </a>
                <a href="logBookView.jsp">
                    <button class="btn btn-custom view-log">View Log Book Records</button>
                </a>
                <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox">
                    <button class="btn btn-custom check-mail">Check E-Mails</button>
                </a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-white">
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

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-7n0D1J6F1zA4O8z3Jz3b5J4z5b5z5b5z5b5z5b5z5b5z5z5z5z5z5z5z5z5z5z5z5" crossorigin="anonymous"></script>
</body>
</html>
