<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">

			<!-- Left: Logo -->
			<a class="navbar-brand" href="home">EventHub</a>

			<!-- Mobile Toggle Button -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarContent"
				aria-controls="navbarContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar Content -->
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarContent">

				<!-- Center: Links -->
				<ul class="navbar-nav mx-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" href="home">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="event">Browse
							Events</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Create
							Event</a></li>
							<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>
				</ul>

				<!-- Right: Login/Register Buttons -->
				<div class="d-flex">
					<a class="btn btn-outline-light me-2" href="loginview">Login</a> <a
						class="btn btn-primary" href="register">Register</a>
				</div>

			</div>
		</div>
	</nav>

</body>
</html>