<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>EventHub</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        /* Navbar with black background */
        nav.navbar {
            background-color: #000000 !important;
            box-shadow: 0 4px 12px rgba(112, 41, 99, 0.7);

            width: 100%;
            z-index: 1030;

        }

        /* Brand styling with purple glow */
        .navbar-brand {
            color: #9b59b6 !important; /* Purple */
            font-weight: 700;
            font-size: 1.8rem;
            text-shadow:
                0 0 5px #9b59b6,
                0 0 10px #9b59b6,
                0 0 20px #9b59b6;
            transition: color 0.3s ease;
        }
        .navbar-brand:hover {
            color: #d8b4f2 !important;
            text-shadow:
                0 0 10px #d8b4f2,
                0 0 20px #d8b4f2,
                0 0 30px #d8b4f2;
        }

        /* Nav links styling */
        .navbar-nav .nav-link {
            color: #9b59b6 !important;
            font-weight: 500;
            font-size: 1.1rem;
            margin-left: 1rem;
            transition: color 0.3s ease, text-shadow 0.3s ease;
            text-shadow: 0 0 3px #6e2a8c;
        }
        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link:focus {
            color: #d8b4f2 !important;
            text-shadow:
                0 0 8px #d8b4f2,
                0 0 15px #d8b4f2;
        }

        /* Active link */
        .navbar-nav .nav-link.active {
            color: #d8b4f2 !important;
            font-weight: 700;
            text-shadow:
                0 0 10px #d8b4f2,
                0 0 20px #d8b4f2;
        }

        /* Login icon and text */
        .navbar-nav .nav-link i {
            margin-right: 6px;
            font-size: 1.2rem;
            vertical-align: middle;
            color: #9b59b6;
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover i {
            color: #d8b4f2;
        }

        /* Navbar toggler button */
        .navbar-toggler {
            border-color: #9b59b6 !important;
        }
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3e%3cpath stroke='%239b59b6' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        /* Add top padding to body to avoid content hidden behind fixed navbar */
        body {
            padding-top: 70px;
            background-color: #121212; /* Dark background for whole page */
            color: #d8b4f2;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark shadow">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">EventHub</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav align-items-center">
                <li class="nav-item"><a class="nav-link active" href="homepage.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Events</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Packages</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">
                        <i class="bi bi-box-arrow-in-right"></i> Login
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>


<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoYz1HI4u5c2bF5p5v6gG1r5Yk5Yl5Yl5Yl5Yl5Yl5Yl5Yl" crossorigin="anonymous"></script>
</body>
</html>
