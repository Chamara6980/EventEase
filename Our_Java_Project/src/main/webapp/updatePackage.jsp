<%@ page import="Packages.Event_Creater_Packages" %>
<%@ page import="Packages.UpdatePackageDetails" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Package</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .update-form {
            max-width: 600px;
            margin: 50px auto;
        }
    </style>
</head>
<body>

<%
    String packageId = request.getParameter("id");
    Event_Creater_Packages pkg = null;

    if (packageId != null) {
        pkg = UpdatePackageDetails.getPackageById(Integer.parseInt(packageId));
    }
%>

<div class="container update-form">
    <% if (pkg != null) { %>
        <div class="card shadow">
            <div class="card-header bg-primary text-white">
                <h4 class="mb-0">Update Package</h4>
            </div>
            <div class="card-body">
                <form action="UpdatePackageDetailsServlet" method="post">
                    <input type="hidden" name="packageId" value="<%= pkg.getPackage_Id() %>">

                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" value="<%= pkg.getPackage_Name() %>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Type</label>
                        <input type="text" name="type" class="form-control" value="<%= pkg.getType() %>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Venue</label>
                        <input type="text" name="venue" class="form-control" value="<%= pkg.getVenue() %>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Items</label>
                        <input type="text" name="items" class="form-control" value="<%= pkg.getItems() %>" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Price</label>
                        <input type="text" name="price" class="form-control" value="<%= pkg.getPrice() %>" required>
                    </div>

                    <button type="submit" class="btn btn-success w-100">Update Package</button>
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
