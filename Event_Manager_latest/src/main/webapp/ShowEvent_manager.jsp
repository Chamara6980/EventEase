<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Details</title>

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #f2f2f2, #e6f2ff);
        }
        .table-container {
            max-width: 800px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }
        .btn-group a {
            text-decoration: none;
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



<div class="table-container">
    <h2 class="text-center mb-4 text-primary">Event Details</h2>
    <table class="table table-bordered">
        <tbody>
            <c:forEach var="evt" items="${eventDetails}">
                <c:set var="event_id" value="${evt.event_id}" />
                <c:set var="pck_id" value="${evt.pck_id}" />
                <c:set var="pck_name" value="${evt.pck_name}" />
                <c:set var="type" value="${evt.type}" />
                <c:set var="items" value="${evt.items}" />
                <c:set var="price" value="${evt.price}" />

                <tr>
                    <th>Event ID</th>
                    <td>${evt.event_id}</td>
                </tr>
                <tr>
                    <th>Package ID</th>
                    <td>${evt.pck_id}</td>
                </tr>
                <tr>
                    <th>Package Name</th>
                    <td>${evt.pck_name}</td>
                </tr>
                <tr>
                    <th>Type</th>
                    <td>${evt.type}</td>
                </tr>
                <tr>
                    <th>Items</th>
                    <td>${evt.items}</td>
                </tr>
                <tr>
                    <th>Price</th>
                    <td>${evt.price}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    
    <div class="btn-group d-flex gap-2 mt-4">
        <c:url value="UpdateItems_manager.jsp" var="evtupdate">
            <c:param name="event_id" value="${event_id}" />
            <c:param name="pck_id" value="${pck_id}" />
            <c:param name="pck_name" value="${pck_name}" />
            <c:param name="type" value="${type}" />
            <c:param name="items" value="${items}" />
            <c:param name="price" value="${price}" />
        </c:url>
        <a href="${evtupdate}" class="btn btn-warning w-100 fw-bold">Update Event</a>

        <c:url value="DeleteEvent_manager.jsp" var="evtdelete">
            <c:param name="event_id" value="${event_id}" />
            <c:param name="pck_id" value="${pck_id}" />
            <c:param name="pck_name" value="${pck_name}" />
            <c:param name="type" value="${type}" />
            <c:param name="items" value="${items}" />
            <c:param name="price" value="${price}" />
        </c:url>
        <a href="${evtdelete}" class="btn btn-danger w-100 fw-bold">Delete Event</a>
    </div>

    <a href="ManagerHome.jsp" class="btn btn-success w-100 mt-3 fw-bold">Go to Home Page</a>
</div>

<!-- Footer -->
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
