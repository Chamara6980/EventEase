<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Event Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #2d3e50;
        }
        .navbar .navbar-brand, .navbar-nav .nav-link {
            color: #ffffff !important;
        }
        .hero-section {
            background: url('https://via.placeholder.com/1600x600') no-repeat center center;
            background-size: cover;
            color: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-color: #ff5722;
        }
        .hero-section h1 {
            font-size: 4rem;
            font-weight: bold;
            color: #fff;
        }
        .hero-section p {
            font-size: 1.2rem;
            color: #ffffff;
        }
        .btn-get-started {
            background-color: #ff5722;
            color: #fff;
            border: none;
            padding: 12px 30px;
            font-size: 1.1rem;
            border-radius: 50px;
            transition: all 0.3s ease;
        }
        .btn-get-started:hover {
            background-color: #e64a19;
            color: #ffffff;
        }
        .event-card {
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
        }
        .event-card h3 {
            color: #2d3e50;
        }
        .content-section {
            padding: 60px 0;
            background-color: #ffffff;
        }
        .footer {
            background-color: #2d3e50;
            color: white;
            padding: 20px 0;
        }
        .footer a {
            color: #f8f9fa;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">EventHub</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Browse Events</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Create Event</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <div>
            <h1>Welcome to EventHub</h1>
            <p>Your one-stop platform for discovering and managing events</p>
            <a href="#events" class="btn btn-get-started">Browse Events</a>
        </div>
    </section>

    <!-- Upcoming Events Section -->
    <section id="events" class="content-section container text-center">
        <h2 class="mb-5">Upcoming Events</h2>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="event-card">
                    <h3>Tech Conference 2025</h3>
                    <p>Join industry leaders for the most exciting technology conference of the year.</p>
                    <a href="#" class="btn btn-primary">View Event</a>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="event-card">
                    <h3>Music Festival 2025</h3>
                    <p>Experience live performances from top artists at the most anticipated festival.</p>
                    <a href="#" class="btn btn-primary">View Event</a>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="event-card">
                    <h3>Art Exhibition 2025</h3>
                    <p>Explore innovative artworks from renowned artists and upcoming talents.</p>
                    <a href="#" class="btn btn-primary">View Event</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer text-center">
        <div class="container">
            <p>&copy; 2025 EventHub | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
