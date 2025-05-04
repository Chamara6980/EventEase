<%@ page import="Packages.Event_Creater_Packages" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="Packages.UpdatePackageDetails" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Package</title>
</head>
<body>

<%
    
    String packageId = request.getParameter("id");
    Event_Creater_Packages pkg = null;

    
    if (packageId != null) {
        pkg = UpdatePackageDetails.getPackageById(Integer.parseInt(packageId)); // Correct method call
    }
%>

<h2>Update Package</h2>

<%
    if (pkg != null) {
%>
    <form action="UpdatePackageDetailsServlet" method="post">
        <input type="hidden" name="packageId" value="<%= pkg.getPackage_Id() %>">

        Name: <input type="text" name="name" value="<%= pkg.getPackage_Name() %>"><br><br>
        Type: <input type="text" name="type" value="<%= pkg.getType() %>"><br><br>
        Venue: <input type="text" name="venue" value="<%= pkg.getVenue() %>"><br><br>
        Items: <input type="text" name="items" value="<%= pkg.getItems() %>"><br><br>
        Price: <input type="text" name="price" value="<%= pkg.getPrice() %>"><br><br>

        <input type="submit" value="Update Package">
    </form>
<%
    } else {
%>
    <p>Package not found. Please try again later.</p>
<%
    }
%>

</body>
</html>
