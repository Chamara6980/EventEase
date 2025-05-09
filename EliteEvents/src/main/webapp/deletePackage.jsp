<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.EliteEvents.Dao.EventPackagesDao" %>
<%@ page import="com.EliteEvents.Model.EventPackages" %>
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
            background-color: #f8f9fa;
        }
        .confirmation-box {
            max-width: 600px;
            margin: 100px auto;
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

<div class="container confirmation-box">
    <% if (pkg != null) { %>
        <div class="card border-danger shadow-sm">
            <div class="card-header bg-danger text-white">
                <h4 class="mb-0">Confirm Deletion</h4>
            </div>
            <div class="card-body">
                <p class="text-danger fw-bold">Are you sure you want to delete the following package?</p>
                <ul class="list-group mb-3">
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
            </div>
        </div>
    <% } else { %>
        <div class="alert alert-warning text-center mt-5" role="alert">
            Package not found. Please try again later.
        </div>
    <% } %>
</div>

</body>
</html>