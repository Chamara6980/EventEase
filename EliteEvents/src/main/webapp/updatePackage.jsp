<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.EliteEvents.Dao.EventPackagesDao" %>
<%@ page import="com.EliteEvents.Model.EventPackages" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Update Package</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />

    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-container {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(211, 0, 255, 0.7);
            max-width: 600px;
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
            font-weight: 900;
        }

        label {
            display: block;
            margin-bottom: 0.3rem;
            font-weight: 600;
            color: #d300ff;
            text-shadow: 0 0 6px #d300ff;
        }

        input[type="text"], input[type="number"] {
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

        input[type="text"]:focus, input[type="number"]:focus {
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
            font-size: 1.1rem;
        }

        input[type="submit"]:hover {
            box-shadow: 0 0 24px 6px #d300ff;
        }

        .alert-warning {
            background-color: #3e3e4f;
            color: #d300ff;
            border: 1px solid #6e00d3;
            box-shadow: 0 0 15px #d300ff;
            font-weight: 700;
            max-width: 600px;
            margin: 4rem auto;
            border-radius: 1rem;
            text-align: center;
        }
    </style>
</head>
<body>

<!-- get specific package id -->
<%
    String packageIdStr = request.getParameter("id");
    EventPackagesDao dao = new EventPackagesDao();
    
    EventPackages pkg = null;

    if (packageIdStr != null) {
        int packageId = Integer.parseInt(packageIdStr);
        pkg = dao.getPackageById(packageId);
    }
%>

<div class="form-container">
    <h1>Update Package</h1>

    <% if (pkg != null) { %>
        <form action="update" method="post">
            <label for="packageIdDisplay">Package ID</label>
			<input type="text" id="packageIdDisplay" value="<%= pkg.getPackage_Id() %>" readonly />

			<input type="hidden" name="packageId" value="<%= pkg.getPackage_Id() %>" />


            <label for="name">Name</label>
            <input type="text" id="name" name="name" value="<%= pkg.getPackage_Name() %>" required />

            <label for="type">Type</label>
            <input type="text" id="type" name="type" value="<%= pkg.getType() %>" required />

            <label for="venue">Venue</label>
            <input type="text" id="venue" name="venue" value="<%= pkg.getVenue() %>" required />

            <label for="items">Items</label>
            <input type="text" id="items" name="items" value="<%= pkg.getItems() %>" required />

            <label for="price">Price</label>
            <input type="number" step="0.01" id="price" name="price" value="<%= pkg.getPrice() %>" required />

            <input type="submit" value="Update Package" />
        </form>
    <% } else 
    	
    { %>
        <div class="alert-warning" role="alert">
            Package not found. Please try again later.
        </div>
    <% } %>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
