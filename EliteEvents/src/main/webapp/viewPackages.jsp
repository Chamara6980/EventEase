<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.EliteEvents.Dao.EventPackagesDao" %>
<%@ page import="com.EliteEvents.Model.EventPackages" %> <!-- Use your actual package and class names -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>View Packages</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />

    <style>
        body {
            background-color: #f8f9fa;
        }
        .table-container {
            margin-top: 50px;
        }
    </style>
</head>
<body>

<div class="container table-container">
    <div class="card shadow-sm">
        <div class="card-body">
            <h2 class="text-center text-primary mb-4">Package List</h2>

            <%
                // Change List type to your model class
                List<EventPackages> packageList = (List<EventPackages>) request.getAttribute("packageList");
                if (packageList != null && !packageList.isEmpty()) {
            %>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead class="table-light">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Type</th>
                                <th>Venue</th>
                                <th>Items</th>
                                <th>Price</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                            for (EventPackages pkg : packageList) {
                        %>
                            <tr>
                                <td><%= pkg.getPackage_Id() %></td>
                                <td><%= pkg.getPackage_Name() %></td>
                                <td><%= pkg.getType() %></td>
                                <td><%= pkg.getVenue() %></td>
                                <td><%= pkg.getItems() != null ? pkg.getItems() : "N/A" %></td>
                                <td><%= pkg.getPrice() != null ? pkg.getPrice() : "N/A" %></td>
                                <td>
                                    <a class="btn btn-sm btn-warning" href="updatePackage.jsp?id=<%= pkg.getPackage_Id() %>">Update</a>
                                    <a class="btn btn-sm btn-danger" href="deletePackage.jsp?id=<%= pkg.getPackage_Id() %>" onclick="return confirm('Are you sure you want to delete this package?');">Delete</a>
                                </td>
                            </tr>
                        <%
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            <%
                } else {
            %>
                <p class="text-center text-muted">No packages found.</p>
            <%
                }
            %>
        </div>
    </div>
</div>

</body>
</html>