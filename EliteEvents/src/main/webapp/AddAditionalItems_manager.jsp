<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Additional Items</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

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
            max-width: 400px;
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

        input[type="text"] {
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

        input[type="text"]:focus {
            background-color: #5a1aff;
            outline: none;
            box-shadow: 0 0 12px #d300ff;
            color: white;
        }

        input[type="submit"] {
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

        input[type="submit"]:hover {
            box-shadow: 0 0 24px 6px #d300ff;
        }

        .btn-home {
            display: block;
            width: 100%;
            margin-top: 1.5rem;
            padding: 0.75rem;
            border: none;
            border-radius: 0.75rem;
            background-color: #8a2be2; /* Electric Violet */
            color: #fff;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            box-shadow: 0 0 12px #8a2be2;
            transition: box-shadow 0.3s ease-in-out, transform 0.2s;
        }

        .btn-home:hover {
            box-shadow: 0 0 24px 6px #8a2be2;
            transform: scale(1.03);
        }
    </style>
    
    <script>
        function validateForm() {
            var pck_id = document.forms["addItemsForm"]["pck_id"].value;
            var pck_name = document.forms["addItemsForm"]["pck_name"].value;
            var type = document.forms["addItemsForm"]["type"].value;
            var items = document.forms["addItemsForm"]["Extraitems"].value;
            var price = document.forms["addItemsForm"]["price"].value;

            // Check if Package ID is numeric
            if (!/^\d+$/.test(pck_id)) {
                alert("Package ID must be a numeric value.");
                return false;
            }

            // Check if Package Name, Type, and Additional Items are alphabetical
            if (!/^[a-zA-Z\s]+$/.test(pck_name)) {
                alert("Package Name should only contain alphabetical characters.");
                return false;
            }
            if (!/^[a-zA-Z\s]+$/.test(type)) {
                alert("Type should only contain alphabetical characters.");
                return false;
            }
            if (!/^[a-zA-Z\s]+$/.test(items)) {
                alert("Additional Items should only contain alphabetical characters.");
                return false;
            }

            // Check if Price is numeric
            if (!/^\d+(\.\d{1,2})?$/.test(price)) {
                alert("Price should be a valid numeric value.");
                return false;
            }

            return true;
        }
    </script>
  
</head>
<body>

<div class="form-container">
    <h1>Add Additional Items</h1>
    
<form name="addItemsForm" action="AddItemsServlet_manager" method="post" onsubmit="return validateForm()">
        <label for="pck_id">Package ID</label>
        <input type="text" name="pck_id" placeholder="Enter Package ID">

        <label for="pck_name">Package Name</label>
        <input type="text" name="pck_name" placeholder="Enter Package Name">

        <label for="type">Type</label>
        <input type="text" name="type" placeholder="Enter Type">

        <label for="Extraitems">Additional Items</label>
        <input type="text" name="Extraitems" placeholder="Enter Additional Items">

        <label for="price">Price</label>
        <input type="text" name="price" placeholder="Enter Price">

        <input type="submit" name="submit" value="Add Additional Items">
    </form>

    <a href="ManagerHome.jsp" class="redirect-button">Go to Home Page</a>
</div>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
