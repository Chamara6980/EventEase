<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create New Package</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 100vh;
        }

        .form-container {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0,0,0,0.5);
            max-width: 500px;
            width: 90%;
            margin: 4rem auto;
            padding: 2rem 2rem;
            color: #f1f1f1;
        }

        h1 {
            color: #d300ff;
            text-shadow: 0 0 8px #d300ff, 0 0 12px #d300ff;
            text-align: center;
            margin-bottom: 2rem;
        }

        label {
            display: block;
            margin-bottom: 0.3rem;
            font-weight: 600;
            color: #d300ff;
            text-shadow: 0 0 6px #d300ff;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 0.5rem 0.75rem;
            margin-bottom: 1.5rem;
            border-radius: 0.5rem;
            border: none;
            background-color: #44444e;
            color: #f1f1f1;
            box-shadow: inset 0 0 8px rgba(211, 0, 255, 0.7);
            transition: background-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            background-color: #5a1aff;
            outline: none;
            box-shadow: 0 0 12px #d300ff;
            color: white;
        }

        .btn-purple {
            width: 100%;
            padding: 0.75rem;
            background-color: #d300ff;
            border: none;
            border-radius: 0.75rem;
            color: white;
            font-weight: bold;
            cursor: pointer;
            box-shadow: 0 0 12px #d300ff;
            transition: box-shadow 0.3s ease;
        }

        .btn-purple:hover {
            box-shadow: 0 0 24px 6px #d300ff;
        }

        .btn-blue {
            display: block;
            width: 100%;
            margin-top: 1rem;
            padding: 0.75rem;
            background-color: #8a2be2;
            border: none;
            border-radius: 0.75rem;
            color: #fff;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            box-shadow: 0 0 12px #8a2be2;
            transition: box-shadow 0.3s ease-in-out, transform 0.2s;
        }

        .btn-blue:hover {
            box-shadow: 0 0 24px 6px #8a2be2;
            transform: scale(1.03);
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1><i class="bi bi-plus-circle-fill"></i> Create New Package</h1>

    <form action="insert" method="post" id="packageForm">
        <label for="Package_Id">Package ID</label>
        <input type="number" id="Package_Id" name="Package_Id" placeholder="Enter Package ID" required min="1" title="Please enter a positive number">

        <label for="Package_Name">Package Name</label>
        <input type="text" id="Package_Name" name="Package_Name" placeholder="Enter Package Name" required pattern=".{3,}" title="At least 3 characters required">

        <label for="Type">Type</label>
        <input type="text" id="Type" name="Type" placeholder="Enter Type" required pattern="[A-Za-z\s]+" title="Only letters and spaces allowed">

        <label for="Venue">Venue</label>
        <input type="text" id="Venue" name="Venue" placeholder="Enter Venue" required pattern=".{3,}" title="At least 3 characters required">

        <label for="Items">Items</label>
        <input type="text" id="Items" name="Items" placeholder="Enter Items" required pattern=".{3,}" title="At least 3 characters required">

        <label for="Price">Price</label>
        <input type="text" id="Price" name="Price" placeholder="Enter Price" required pattern="^\d+(\.\d{1,2})?$" title="Enter a valid price (e.g. 100 or 99.99)">

        <input type="submit" class="btn-purple" value="Create Package">
    </form>

    <form action="view" method="get">
        <button type="submit" class="btn-blue"><i class="bi bi-eye-fill"></i> View All Packages</button>
    </form>
</div>

<%@ include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>

<script>
    // Additional JavaScript validation for Price field to ensure positive number
    document.getElementById('packageForm').addEventListener('submit', function(event) {
        const priceInput = document.getElementById('Price').value.trim();
        const price = parseFloat(priceInput);

        if (isNaN(price) || price <= 0) {
            alert('Please enter a valid positive number for Price.');
            event.preventDefault();
            return false;
        }
    });
</script>

</body>
</html>
