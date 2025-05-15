<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<!-- Bootstrap 5 CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-light">

	<div
		class="container d-flex align-items-center justify-content-center min-vh-100">
		<div class="card shadow-sm p-4" style="min-width: 350px;">
			<h2 class="mb-4 text-center">Register</h2>
			<form action="registerform" method="post">
				<input type="hidden" name="action" value="register">
				<div class="mb-3">
					<label for="username" class="form-label">Username</label> <input
						type="text" id="username" name="username" class="form-control"
						placeholder="Enter username" required>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email address</label> <input
						type="email" id="email" name="email" class="form-control"
						placeholder="Enter email" required>
				</div>
				<div class="mb-3">
					<label for="phone" class="form-label">Phone</label> <input
						type="text" id="phone" name="phone" class="form-control"
						placeholder="Enter phone number" required>
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password</label> <input
						type="password" id="password" name="password" class="form-control"
						placeholder="Enter password" required>
				</div>

				<button type="submit" class="btn btn-primary w-100">Register</button>
			</form>
			<div class="text-center mt-3">
				<span class="text-secondary">Already have an account? </span> <a
					href="login.jsp">Login</a>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS (Optional, for interactive components) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
