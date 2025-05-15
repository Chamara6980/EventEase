<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Booking</title>
    <meta charset="UTF-8">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card shadow-sm p-4" style="max-width: 430px; width: 100%;">
            <h2 class="text-center mb-4">Edit Booking</h2>
            <form action="editBooking" method="post">
                <input type="hidden" name="id" value="${booking.id}">
                
                <div class="mb-3">
                    <label for="fullName" class="form-label">Full Name</label>
                    <input type="text" id="fullName" name="fullName" class="form-control" value="${booking.fullName}" required>
                </div>
                
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" id="email" name="email" class="form-control" value="${booking.email}" required>
                </div>
                
                <div class="mb-3">
                    <label for="conNumber" class="form-label">Contact Number</label>
                    <input type="text" id="conNumber" name="conNumber" class="form-control" value="${booking.conNumber}" required>
                </div>
                
                <div class="mb-3">
                    <label for="date" class="form-label">Date</label>
                    <input type="date" id="date" name="date" class="form-control" value="${booking.date}" required>
                </div>
                
                <div class="mb-4">
                    <label for="specRequirment" class="form-label">Special Requirement</label>
                    <textarea id="specRequirment" name="specRequirment" class="form-control" placeholder="Type here..." rows="3">${booking.specRequirment}</textarea>
                </div>
                
                <div class="d-flex gap-2">
                    <button type="submit" class="btn btn-primary w-50">Update Booking</button>
                    <a href="booking" class="btn btn-secondary w-50">Cancel</a>
                </div>
            </form>
        </div>
    </div>
    <!-- Bootstrap JS (optional, for interactive components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
