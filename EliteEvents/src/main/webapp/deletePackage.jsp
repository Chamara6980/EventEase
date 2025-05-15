<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.EliteEvents.Dao.EventPackagesDao" %>
<%@ page import="com.EliteEvents.Model.EventPackages" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Delete Package</title>

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7"
      crossorigin="anonymous"
    />

    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .confirmation-container {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(211, 0, 255, 0.7);
            max-width: 600px;
            width: 90%;
            margin: 5rem auto;
            padding: 2rem;
            color: #f1f1f1;
        }

        h1 {
            color: #d300ff;
            text-shadow: 0 0 8px #d300ff, 0 0 12px #d300ff;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 900;
        }

        p.confirmation-text {
            color: #ff4d4d;
            font-weight: 700;
            font-size: 1.2rem;
            text-align: center;
            margin-bottom: 2rem;
            text-shadow: 0 0 6px #ff4d4d;
        }

        ul.list-group {
            background-color: #3a3a46;
            border-radius: 0.75rem;
            box-shadow: inset 0 0 10px rgba(211, 0, 255, 0.7);
            margin-bottom: 2rem;
        }

        ul.list-group li.list-group-item {
            background-color: transparent;
            color: #f1f1f1;
            border: none;
            font-weight: 600;
            border-bottom: 1px solid rgba(211, 0, 255, 0.3);
        }

        ul.list-group li.list-group-item:last-child {
            border-bottom: none;
        }

        form.d-flex.gap-2 button.btn-danger,
        form.d-flex.gap-2 a.btn-secondary {
            border-radius: 0.75rem;
            font-weight: 700;
            font-size: 1.1rem;
            box-shadow: 0 0 12px #d300ff;
            transition: box-shadow 0.3s ease, transform 0.2s ease;
        }

        form.d-flex.gap-2 button.btn-danger:hover {
            box-shadow: 0 0 24px 6px #d300ff;
            transform: scale(1.05);
        }

        form.d-flex.gap-2 a.btn-secondary {
            background-color: #5a5a66;
            color: #f1f1f1;
            border: none;
        }

        form.d-flex.gap-2 a.btn-secondary:hover {
            background-color: #7a7a99;
            box-shadow: 0 0 20px #d300ff;
            transform: scale(1.05);
            color: #fff;
            text-decoration: none;
        }

        .alert-warning {
            background-color: #3e3e4f;
            color: #d300ff;
            border: 1px solid #6e00d3;
            box-shadow: 0 0 15px #d300ff;
            font-weight: 700;
            max-width: 600px;
            margin: 5rem auto;
            border-radius: 1rem;
            text-align: center;
        }
    </style>
</head>
<body>

<%
    String packageIdStr = request.getParameter("id");
    EventPackagesDao pkgDao = new EventPackagesDao();
    EventPackages pkg = null;
    if (packageIdStr != null) {
        int packageId = Integer.parseInt(packageIdStr);
        pkg = pkgDao.getPackageById(packageId);
    }
%>

<div class="confirmation-container">
    <h1>Confirm Deletion</h1>

    <% if (pkg != null) { %>
        <p class="confirmation-text">Are you sure you want to delete the following package?</p>
        <ul class="list-group">
            <li class="list-group-item"><strong>Name:</strong> <%= pkg.getPackage_Name() %></li>
            <li class="list-group-item"><strong>Type:</strong> <%= pkg.getType() %></li>
            <li class="list-group-item"><strong>Venue:</strong> <%= pkg.getVenue() %></li>
            <li class="list-group-item"><strong>Items:</strong> <%= (pkg.getItems() != null) ? pkg.getItems() : "N/A" %></li>
            <li class="list-group-item"><strong>Price:</strong> <%= pkg.getPrice() %></li>
        </ul>

        <form method="POST" action="delete" class="d-flex gap-2">
            <input type="hidden" name="packageId" value="<%= pkg.getPackage_Id() %>" />
            <button type="submit" class="btn btn-danger w-50">Delete Package</button>
            <a href="viewPackages.jsp" class="btn btn-secondary w-50">Cancel</a>
        </form>
    <% } else { %>
        <div class="alert-warning" role="alert">
            Package not found. Please try again later.
        </div>
    <% } %>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
