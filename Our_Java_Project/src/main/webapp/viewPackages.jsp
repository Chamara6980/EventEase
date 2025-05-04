<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Packages.Event_Creater_Packages" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Packages</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #999;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #eee;
        }
        a.button {
            padding: 6px 12px;
            background-color: #2e6da4;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a.button:hover {
            background-color: #204d74;
        }
    </style>
</head>
<body>
    <h2 align="center">Package List</h2>

    <%
        List<Event_Creater_Packages> packageList = (List<Event_Creater_Packages>) request.getAttribute("packageList");

        if (packageList != null && !packageList.isEmpty()) {
    %>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Type</th>
                <th>Venue</th>
                <th>Items</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <%
                for (Event_Creater_Packages pkg : packageList) {
            %>
                <tr>
                    <td><%= pkg.getPackage_Id() %></td>
                    <td><%= pkg.getPackage_Name() %></td>
                    <td><%= pkg.getType() %></td>
                    <td><%= pkg.getVenue() %></td>
                    <td><%= pkg.getItems() %></td>
                    <td><%= pkg.getPrice() %></td>
                    <td>
                        <!-- Button to update -->
                        <a class="button" href="updatePackage.jsp?id=<%= pkg.getPackage_Id() %>">Update</a>


                        <!-- Button to delete -->
                        <a class="button" href="deletePackage.jsp?id=<%= pkg.getPackage_Id() %>">Delete</a>
                    </td>
                </tr>
            <%
                }
            %>
        </table>
    <%
        } else {
    %>
        <p align="center">No packages found.</p>
    <%
        }
    %>

</body>
</html>
