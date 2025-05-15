<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>All Bookings</title>
<!-- Bootstrap 5 CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap Icons CDN (for button icons, optional) -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
</head>

<body class="bg-light">


	<div class="container py-4">
		<h1 class="mb-4 text-center">Booking List</h1>
		<div class="row g-4">
			<c:forEach items="${bookings}" var="booking">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="card shadow-sm h-100">
						<div class="card-header bg-primary text-white">
							<h5 class="mb-0">Booking #${booking.id}</h5>
						</div>
						<div class="card-body">
							<ul class="list-unstyled mb-3">
								<li><strong>Name:</strong> ${booking.fullName}</li>
								<li><strong>Email:</strong> ${booking.email}</li>
								<li><strong>Contact:</strong> ${booking.conNumber}</li>
								<li><strong>Date:</strong> ${booking.date}</li>
							</ul>
							<c:if test="${not empty booking.specRequirment}">
								<div class="alert alert-info py-2">
									<strong>Special Requirements:</strong><br>
									${booking.specRequirment}
								</div>
							</c:if>
						</div>
						<div
							class="card-footer bg-white border-0 d-flex justify-content-end gap-2">
							<a href="editBooking?id=${booking.id}"
								class="btn btn-sm btn-warning"> <i
								class="bi bi-pencil-square"></i> Edit
							</a> <a href="deleteBooking?id=${booking.id}"
								class="btn btn-sm btn-danger"
								onclick="return confirm('Are you sure you want to delete this booking?');">
								<i class="bi bi-trash"></i> Delete
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- Bootstrap JS (optional, for interactivity) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>




<!-- <%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Bookings</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f7fa;
            padding: 2rem;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .header {
            text-align: center;
            margin-bottom: 2rem;
            color: #2c3e50;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 1.5rem;
            padding: 1rem;
        }

        .booking-card {
            background: white;
            border-radius: 10px;
            padding: 1.5rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .booking-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
        }

        .card-header {
            border-bottom: 2px solid #3498db;
            padding-bottom: 0.8rem;
            margin-bottom: 1rem;
        }

        .booking-id {
            color: #3498db;
            font-size: 1.2rem;
            font-weight: 600;
            margin: 0;
        }

        .detail-item {
            margin-bottom: 0.8rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .detail-label {
            color: #7f8c8d;
            font-size: 0.9rem;
            font-weight: 500;
        }

        .detail-value {
            color: #2c3e50;
            font-weight: 600;
            text-align: right;
            max-width: 60%;
        }

        .special-requirements {
            background: #f8f9fa;
            padding: 1rem;
            border-radius: 6px;
            margin-top: 1rem;
            font-size: 0.9rem;
            color: #7f8c8d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="header">Booking List</h1>
        
        <div class="card-grid">
            <c:forEach items="${bookings}" var="booking">
                <div class="booking-card">
                    <div class="card-header">
                        <h2 class="booking-id">Booking #${booking.id}</h2>
                    </div>
                    
                    <div class="detail-item">
                        <span class="detail-label">Name:</span>
                        <span class="detail-value">${booking.fullName}</span>
                    </div>
                    
                    <div class="detail-item">
                        <span class="detail-label">Email:</span>
                        <span class="detail-value">${booking.email}</span>
                    </div>
                    
                    <div class="detail-item">
                        <span class="detail-label">Contact:</span>
                        <span class="detail-value">${booking.conNumber}</span>
                    </div>
                    
                    <div class="detail-item">
                        <span class="detail-label">Date:</span>
                        <span class="detail-value">${booking.date}</span>
                    </div>
                    
                    <c:if test="${not empty booking.specRequirment}">
                        <div class="special-requirements">
                            <strong>Special Requirements:</strong><br>
                            ${booking.specRequirment}
                        </div>
                    </c:if>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
 -->
