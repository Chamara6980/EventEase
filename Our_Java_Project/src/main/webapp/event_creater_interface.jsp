<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Event Creator Interface</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    
    <!-- Bootstrap Icons (optional) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
    
    <style>
        body {
            background: linear-gradient(to right, #f2f2f2, #e6f2ff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            border-radius: 1rem;
        }
        .form-label {
            font-weight: 500;
        }
        .btn-success, .btn-primary {
            font-weight: bold;
            letter-spacing: 0.5px;
        }
    </style>
</head>
<body>

    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card p-4 shadow-lg" style="width: 100%; max-width: 600px;">
            <h2 class="card-title text-center text-success mb-4">
                <i class="bi bi-plus-circle-fill"></i> Create New Package
            </h2>
            
            <form action="insert" method="post">
                <div class="mb-3">
                    <label class="form-label">Package ID</label>
                    <input type="number" name="Package_Id" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Package Name</label>
                    <input type="text" name="Package_Name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Type</label>
                    <input type="text" name="Type" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Venue</label>
                    <input type="text" name="Venue" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Items</label>
                    <input type="text" name="Items" class="form-control" required>
                </div>
                <div class="mb-4">
                    <label class="form-label">Price</label>
                    <input type="text" name="Price" class="form-control" required>
                </div>
                <div class="d-grid mb-2">
                    <button type="submit" class="btn btn-success">
                        <i class="bi bi-check-circle-fill"></i> Create Package
                    </button>
                </div>
            </form>

            <form action="view" method="get" class="d-grid">
                <button type="submit" class="btn btn-primary">
                    <i class="bi bi-eye-fill"></i> View All Packages
                </button>
            </form>
        </div>
    </div>

</body>
</html>
