<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Booking</title>
<!-- Bootstrap 5 CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body class="bg-light">
	<div
		class="container d-flex align-items-center justify-content-center min-vh-100">
		<div class="card shadow-sm p-4" style="max-width: 430px; width: 100%;">
			<h2 class="text-center mb-4">New Booking</h2>
			<form action="insertBooking" method="post">
				<input type="hidden" name="eventId" value="${eventId}" />
				<div class="mb-3">
					<label for="fullName" class="form-label">Full Name</label> <input
						type="text" id="fullName" name="fullName" class="form-control"
						required>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email</label> <input
						type="email" id="email" name="email" class="form-control" required>
				</div>
				<div class="mb-3">
					<label for="conNumber" class="form-label">Contact Number</label> <input
						type="text" id="conNumber" name="conNumber" class="form-control"
						required>
				</div>
				<div class="mb-3">
					<label for="date" class="form-label">Date</label> <input
						type="date" id="date" name="date" class="form-control" required>
				</div>
				<div class="mb-4">
					<label for="specRequirment" class="form-label">Special
						Requirement</label>
					<textarea id="specRequirment" name="specRequirment"
						class="form-control" placeholder="Type here..." rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-primary w-100">Book</button>
			</form>
		</div>
	</div>
	<!-- Bootstrap JS (Optional) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
