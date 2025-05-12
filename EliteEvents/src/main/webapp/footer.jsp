<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EventMaster</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

<style>
/* Footer styling matching header */
footer {
    flex-shrink: 0;
    background-color: #000000; /* Black background */
    color: #9b59b6; /* Purple text */
    box-shadow: 0 -4px 12px rgba(155, 89, 182, 0.7); /* Purple glow shadow */
    padding-top: 2rem;
    padding-bottom: 1rem;
    letter-spacing: 0.02em;
}

footer h5 {
    font-weight: 700;
    color: #d8b4f2; /* Lighter purple for headings */
    text-shadow:
        0 0 6px #9b59b6,
        0 0 12px #9b59b6;
    margin-bottom: 1rem;
}

footer p, footer a {
    color: #9b59b6;
    text-shadow: 0 0 4px #6e2a8c;
}

footer a.text-decoration-none:hover,
footer a.text-decoration-none:focus {
    color: #d8b4f2 !important;
    text-shadow:
        0 0 10px #d8b4f2,
        0 0 20px #d8b4f2;
    text-decoration: underline;
}

footer .bi {
    font-size: 1.4rem;
    margin-right: 1rem;
    transition: color 0.3s ease, text-shadow 0.3s ease;
    color: #9b59b6;
    text-shadow: 0 0 5px #6e2a8c;
}

footer .bi:hover {
    color: #d8b4f2;
    text-shadow:
        0 0 12px #d8b4f2,
        0 0 25px #d8b4f2;
}

footer hr {
    border-top: 1.5px solid #9b59b6;
    opacity: 0.3;
    margin: 1.5rem 0 1rem 0;
}

footer p.mb-0 {
    font-size: 1rem;
    color: #bfa2db;
    text-shadow: 0 0 3px #6e2a8c;
    text-align: center;
}
</style>
</head>
<body>

<!-- Main content of the page goes here -->

<!-- Footer Section -->
<footer>
    <div class="container text-center text-md-start">
        <div class="row">
            <div class="col-md-4 mb-3">
                <h5>EventHub</h5>
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
                <a href="#" aria-label="Facebook"><i class="bi bi-facebook"></i></a>
                <a href="#" aria-label="Twitter"><i class="bi bi-twitter"></i></a>
                <a href="#" aria-label="Instagram"><i class="bi bi-instagram"></i></a>
                <a href="#" aria-label="LinkedIn"><i class="bi bi-linkedin"></i></a>
            </div>
        </div>
        <hr>
        <p class="mb-0">&copy; 2025 EventMaster. All Rights Reserved.</p>
    </div>
</footer>

<!-- Scroll to Top Script -->
<script>
    window.onload = function() {
        // Remove the hash from the URL if there is one
        if (window.location.hash) {
            window.history.pushState("", document.title, window.location.pathname + window.location.search);
        }
        window.scrollTo(0, 0); // Scrolls to the top of the page
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
