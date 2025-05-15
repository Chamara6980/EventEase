<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Display</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
	crossorigin="anonymous">
</head>
<%@ include file="header.jsp"%>
<body class="bg-light">
	<div class="container py-5">
		<!-- Top Row: 3 Event Cards -->
		<div class="row g-4 mb-4">
			<div class="col-md-4">
				<div class="card h-100 shadow-sm border-0">
					<img src="images/live-concert.jpg" class="card-img-top rounded-top"
						alt="Event Image" style="height: 300px; object-fit: cover;">
					<div class="card-body d-flex flex-column">
						<span class="badge bg-primary mb-2">Music</span>
						<h5 class="card-title">Live Concert</h5>
						<p class="card-text">
							Enjoy a night of live music with top bands. Venue: City Hall.<br>
							Experience the best sound and lighting, and join a crowd of music
							lovers for an unforgettable evening. Gates open at 6pm.
						</p>
						<div class="mt-auto">
							<a href="#" class="btn btn-outline-primary w-100 mb-2">View
								Details</a><input type="hidden" name="eventId" value="${event.id}" /> 
								<a href="bookingForm" class="btn btn-primary w-100">Book</a>
						</div>
					</div>
					<div class="card-footer bg-white border-0 text-center">
						<small class="text-muted">Event Date: May 15, 2025</small>
					</div>
				</div>

			</div>
			<div class="col-md-4">
				<div class="card h-100 shadow-sm border-0">
					<img src="images/photography.jpg" class="card-img-top rounded-top"
						alt="Event Image" style="height: 300px; object-fit: cover;">
					<div class="card-body d-flex flex-column">
						<span class="badge bg-success mb-2">Workshop</span>
						<h5 class="card-title">Photography Workshop</h5>
						<p class="card-text">
							Learn the art of photography from experts. Limited seats
							available!<br> Bring your own camera and get hands-on tips,
							participate in live shoots, and receive personalized feedback.
						</p>
						<div class="mt-auto">
							<a href="#" class="btn btn-outline-success w-100 mb-2">View
								Details</a> 
								<input type="hidden" name="eventId" value="${event.id}" />
								 <a href="bookingForm" class="btn btn-success w-100">Book</a>
						</div>
					</div>
					<div class="card-footer bg-white border-0 text-center">
						<small class="text-muted">Event Date: June 10, 2025</small>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card h-100 shadow-sm border-0">
					<img src="images/tech-inovation.jpg"
						class="card-img-top rounded-top" alt="Event Image"
						style="height: 300px; object-fit: cover;">
					<div class="card-body d-flex flex-column">
						<span class="badge bg-danger mb-2">Conference</span>
						<h5 class="card-title">Tech Innovations 2025</h5>
						<p class="card-text">
							Join industry leaders to discuss the future of technology.<br>
							Attend keynote sessions, network with professionals, and explore
							the latest in tech trends and solutions.
						</p>
						<div class="mt-auto">
							<a href="#" class="btn btn-outline-danger w-100 mb-2">View Details</a>
							<input type="hidden" name="eventId" value="${event.id}" />
							<a href="bookingForm" class="btn btn-danger w-100">Book</a>
						</div>
					</div>
					<div class="card-footer bg-white border-0 text-center">
						<small class="text-muted">Event Date: July 5, 2025</small>
					</div>
				</div>
			</div>
		</div>
		<!-- Bottom Row: 2 Event Cards Centered -->
		<div class="row g-4 justify-content-center">
			<div class="col-md-4">
				<div class="card h-100 shadow-sm border-0">
					<img src="images/business.jpg" class="card-img-top rounded-top"
						alt="Event Image" style="height: 300px; object-fit: cover;">
					<div class="card-body d-flex flex-column">
						<span class="badge bg-warning text-dark mb-2">Seminar</span>
						<h5 class="card-title">Business Growth Seminar</h5>
						<p class="card-text">
							Unlock strategies for business expansion with top industry
							experts.<br> Interactive sessions and networking
							opportunities.
						</p>
						<div class="mt-auto">
							<a href="#" class="btn btn-outline-warning w-100 mb-2">View
								Details</a>
								<input type="hidden" name="eventId" value="${event.id}" />
								<a href="bookingForm" class="btn btn-warning w-100">Book</a>
						</div>
					</div>
					<div class="card-footer bg-white border-0 text-center">
						<small class="text-muted">Event Date: August 20, 2025</small>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card h-100 shadow-sm border-0">
					<img src="images/digital-marketing.jpg"
						class="card-img-top rounded-top" alt="Event Image"
						style="height: 300px; object-fit: cover;">
					<div class="card-body d-flex flex-column">
						<span class="badge bg-info text-dark mb-2">Webinar</span>
						<h5 class="card-title">Digital Marketing Webinar</h5>
						<p class="card-text">
							Learn the latest digital marketing trends and tools from industry
							leaders.<br> Accessible online from anywhere in the world.
						</p>
						<div class="mt-auto">
							<a href="#" class="btn btn-outline-info w-100 mb-2">View Details</a>
							<input type="hidden" name="eventId" value="${event.id}" />
							<a href="bookingForm" class="btn btn-info w-100">Book</a>
						</div>
					</div>
					<div class="card-footer bg-white border-0 text-center">
						<small class="text-muted">Event Date: September 12, 2025</small>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO"
		crossorigin="anonymous"></script>
</body>
</html>
