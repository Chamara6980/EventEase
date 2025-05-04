<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Packages.UpdatePackageDetails" %>
<%@ page import="Packages.DeletePackageDetails" %>

<%@ page import="Packages.Event_Creater_Packages" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Package</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }
        .confirmation-box {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
            padding: 20px;
            border-radius: 5px;
        }
        .button {
            padding: 10px 20px;
            background-color: #dc3545;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #c82333;
        }
        .cancel-button {
            background-color: #6c757d;
        }
        .cancel-button:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

<%
    // Retrieve the package ID
    String packageId = request.getParameter("id");
    Event_Creater_Packages pkg = null;

    if (packageId != null) {
        pkg = UpdatePackageDetails.getPackageById(Integer.parseInt(packageId)); 
    }
%>

<% if (pkg != null) { %>
    <div class="confirmation-box">
        <h3>Are you sure you want to delete the following package?</h3>
        <p><strong>Name:</strong> <%= pkg.getPackage_Name() %></p>
        <p><strong>Type:</strong> <%= pkg.getType() %></p>
        <p><strong>Venue:</strong> <%= pkg.getVenue() %></p>
        <p><strong>Items:</strong> <%= pkg.getItems() %></p>
        <p><strong>Price:</strong> <%= pkg.getPrice() %></p>

        <form method="POST" action="DeletePackageServlet">
            <input type="hidden" name="packageId" value="<%= pkg.getPackage_Id() %>" />
            <button type="submit" class="button">Delete Package</button>
        </form>
        <br>
        <a href="viewPackages.jsp" class="button cancel-button">Cancel</a>
    </div>
<% } else { %>
    <p>Package not found. Please try again later.</p>
<% } %>

</body>
</html>
