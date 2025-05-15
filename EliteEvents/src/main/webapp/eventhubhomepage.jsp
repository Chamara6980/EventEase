<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EventHub - Event Management System</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet" />

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: #0d0d0d;
      color: #f8f0ff;
      font-family: 'Audiowide', cursive;
      font-size: 18px;
    }

    .content-section,
    .carousel-inner,
    .carousel-item,
    .event-card,
    .feature-card {
      background-color: #0d0d0d !important;
      color: #da00f7 !important;
    }

    .event-card img {
      filter: brightness(0.8);
      border-radius: 10px;
    }

    .section-title,
    .event-card h3,
    .carousel-caption h2,
    .carousel-caption p {
      color: #ff00ff !important;
      font-size: 2rem;
    }

    .hero {
      position: relative;
      height: 500px;
      overflow: hidden;
      z-index: 1;
      background-color:red;
    }

    .hero img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      filter: brightness(0.4);
      position: relative;
      z-index: 0;
    }

    .hero .hero-text {
      position: absolute;
      top: 70%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      color: #ff00ff;
      z-index: 2;
    }

    .event-title {
      font-size: 4rem;
      font-weight: 400;
      background: linear-gradient(45deg, #ff00ff, #da00f7);
      -webkit-background-clip: text;
      color: transparent;
      text-shadow: 0 0 5px #ff00ff, 0 0 10px #da00f7;
      animation: textGlow 3s infinite alternate;
      white-space: nowrap; /* Prevent text from wrapping */
    }

    .event-description {
      font-size: 1.5rem;
      margin-top: 15px;
      animation: fadeIn 2s ease-out;
      animation-delay: 1s;
      color: #ffffff;
    }

    .btn {
      font-size: 1.5rem !important;
      padding: 18px 36px !important;
      color: white !important;
      border-radius: 50px !important;
      text-transform: uppercase;
      font-weight: bold;
    }

    .btn-main {
      background-color: #ff00ff;
      color: white !important;
    }

    .btn-outline-custom {
      border: 2px solid #ff00ff;
      color: white !important;
    }

    .btn-outline-custom:hover {
      background-color: #ff00ff;
      color: #0d0d0d !important;
    }

    .pulse-btn {
      color: white !important;
    }

    .fab {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #ff00ff;
      color: black;
      border-radius: 50%;
      padding: 12px;
      font-size: 1.6rem;
      box-shadow: 0 4px 12px rgba(255, 0, 255, 0.5);
      transition: transform 0.3s ease, box-shadow 0.3s;
      width: 50px;
      height: 50px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .fab:hover {
      background-color: #da00f7;
      transform: translateY(-5px);
      box-shadow: 0 6px 18px rgba(255, 0, 255, 0.7);
    }

    .feature-icon {
      font-size: 3rem;
      color: #ff00ff;
      margin-bottom: 15px;
      text-shadow: 0 0 3px #da00f7;
    }

    .feature-icon:hover {
      color: #da00f7;
    }

    .content-section {
      padding: 70px 20px;
    }

    .feature-card,
    .event-card {
      border-radius: 12px;
      padding: 30px;
      box-shadow: 0 6px 30px rgba(218, 0, 247, 0.3);
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .feature-card:hover,
    .event-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 40px rgba(255, 0, 255, 0.5);
    }

    .carousel-inner img {
      width: 100%;
      height: 600px;
      object-fit: cover;
      filter: brightness(0.6);
    }

    #featuredEventsTitle {
      font-size: 4rem;
      text-align: center;
      margin-bottom: 40px;
      color: #ff00ff;
      text-shadow: 0 0 3px #da00f7;
    }

    #events .section-title {
      font-size: 3.5rem;
      text-align: center;
      margin-bottom: 40px;
      color: #ff00ff;
      text-shadow: 0 0 3px #da00f7;
    }

    .about-section {
      background-color: #0d0d0d;
      padding: 70px 20px;
      text-align: center;
    }

    .about-title {
      font-size: 3rem;
      color: #ff00ff;
      margin-bottom: 20px;
    }

    .about-text {
      font-size: 1.5rem;
      color: #ffffff;
      line-height: 1.8;
      max-width: 800px;
      margin: 0 auto;
      opacity: 0;
      transform: translateY(20px);
      animation: fadeInUp 2s ease-out forwards;
      animation-delay: 1s;
    }

    @keyframes fadeInUp {
      0% {
        opacity: 0;
        transform: translateY(20px);
      }

      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    html {
      scroll-behavior: smooth;
    }

    .get-involved-section {
      padding: 60px 20px;
    }

    .animated-heading {
      font-size: 4rem;
      animation: fadeInUp 1s ease-out forwards;
    }

    .animated-text {
      font-size: 1.8rem;
      color: #ffffff;
      margin: 20px 0 40px;
      animation: fadeInUp 1.5s ease-out forwards;
    }

    @keyframes pulse {
      0% {
        transform: scale(1);
        box-shadow: 0 0 0 0 rgba(255, 0, 255, 0.6);
      }

      70% {
        transform: scale(1.05);
        box-shadow: 0 0 20px 10px rgba(255, 0, 255, 0);
      }

      100% {
        transform: scale(1);
        box-shadow: 0 0 0 0 rgba(255, 0, 255, 0);
      }
    }

    .pulse-btn {
      font-size: 1.8rem;
      padding: 24px 50px;
      border-radius: 60px;
      animation: pulse 2s infinite;
      color: white;
    }
  </style>
</head>

<body>
  <!-- Hero Section -->
  <section class="hero">
    <img src="<%= request.getContextPath() %>/homepage images/hero1.png" alt="Event 1">
    <div class="hero-text">
      <h1 class="event-title">Welcome to EventHub</h1>
      <p class="event-description">Your complete platform for managing and exploring unforgettable events</p>
      <a href="#events" class="btn btn-main">Explore Events</a>
    </div>
  </section>

  <!-- About Section -->
  <section class="about-section">
    <h2 class="about-title">About EventHub</h2>
    <p class="about-text">
      EventHub is your one-stop platform for discovering and managing a wide range of events,
      from corporate conferences and tech expos to community gatherings and celebrations. 
      Our mission is to connect people, businesses, and organizations through unforgettable events 
      that inspire and create meaningful experiences.
    </p>
  </section>

  <!-- Featured Events Carousel -->
 <div id="featuredEvents" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="<%= request.getContextPath() %>/homepage images/event1.jpg" class="d-block w-100" alt="Event 1">
            <div class="carousel-caption d-none d-md-block">
                <h5 class="event-title">Birthday Party</h5>
                <p>Join us for an amazing event experience!</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="<%= request.getContextPath() %>/homepage images/event2.jpg" class="d-block w-100" alt="Event 2">
            <div class="carousel-caption d-none d-md-block">
                <h5 class="event-title">DJ Night</h5>
                <p>Get ready to dance the night away with top DJs!</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="<%= request.getContextPath() %>/homepage images/event3.jpg" class="d-block w-100" alt="Event 3">
            <div class="carousel-caption d-none d-md-block">
                <h5 class="event-title">Weddings</h5>
                <p>Celebrate love with the most magical wedding events.</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#featuredEvents" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#featuredEvents" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

  <!-- Call to Action -->
  <section class="content-section">
    <div class="container text-center get-involved-section">
      <h2 class="section-title animated-heading">Get Involved</h2>
      <p class="animated-text">Ready to create your own event? Start by adding your event details below!</p>
      <a href="event" class="btn btn-main pulse-btn">Book Event</a>
    </div>
  </section>

  <!-- Floating Action Button -->
  <a href="#addEventForm" class="fab"><i class="bi bi-plus"></i></a>

  <!-- Upcoming Events Section -->
  <section id="events" class="content-section">
    <div class="container">
      <h2 class="section-title">Upcoming Events</h2>
      <div class="row text-center">
        <div class="col-md-4 mb-4">
          <div class="event-card">
            <img src="<%= request.getContextPath() %>/homepage images/startup.jpg" class="d-block w-100" alt="Startup">
            <h4>Startup Summit 2025</h4>
            <p>Pitch sessions, keynotes & investor networking.</p>
            <a href="#" class="btn btn-outline-custom">View Details</a>
          </div>
        </div>
        <div class="col-md-4 mb-4">
          <div class="event-card">
            <img src="<%= request.getContextPath() %>/homepage images/tech.jpg" class="d-block w-100" alt="Tech">
            <h4>Tech Innovation Expo</h4>
            <p>Showcase of cutting-edge technologies and startups.</p>
            <a href="#" class="btn btn-outline-custom">View Details</a>
          </div>
        </div>
        <div class="col-md-4 mb-4">
          <div class="event-card">
            <img src="<%= request.getContextPath() %>/homepage images/art.jpg" class="d-block w-100" alt="Art">
            <h4>Art & Culture Fest</h4>
            <p>Celebrate creativity in all its forms.</p>
            <a href="#" class="btn btn-outline-custom">View Details</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <%@ include file="footer.jsp" %>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
