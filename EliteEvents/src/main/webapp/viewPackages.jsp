<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.EliteEvents.Dao.EventPackagesDao" %>
<%@ page import="com.EliteEvents.Model.EventPackages" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>View Packages</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet" />

    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .table-container {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(211, 0, 255, 0.7);
            max-width: 900px;
            margin: 4rem auto;
            padding: 2rem 2rem;
            color: #f1f1f1;
        }

        h2 {
            color: #d300ff;
            text-shadow: 0 0 8px #d300ff, 0 0 12px #d300ff;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 900;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        thead th {
            background-color: #3e3e4f;
            color: #d300ff;
            padding: 12px 15px;
            border: 1px solid #6e00d3;
            text-align: center;
            font-weight: 700;
            text-shadow: 0 0 4px #d300ff;
        }

        tbody td {
            background-color: #44444e;
            padding: 12px 15px;
            border: 1px solid #6e00d3;
            text-align: center;
            color: #f1f1f1;
        }

        tbody tr:hover td {
            background-color: #6e00d3;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            box-shadow: 0 0 10px 2px #d300ff;
        }

        td[data-label="Actions"] {
            white-space: nowrap;  /* Keep buttons side by side */
        }

        .btn-purple, .btn-danger {
            display: inline-block;
            margin: 0 4px;
            padding: 0.4rem 0.8rem;
            font-size: 0.9rem;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            border-radius: 0.5rem;
            font-weight: bold;
            box-shadow: 0 0 8px;
            transition: box-shadow 0.3s ease;
        }

        .btn-purple {
            background-color: #d300ff;
            box-shadow: 0 0 8px #d300ff;
            color: white;
            border: none;
        }

        .btn-purple:hover {
            box-shadow: 0 0 20px 6px #d300ff;
        }

        .btn-danger {
            background-color: #ff0054;
            box-shadow: 0 0 8px #ff0054;
            color: white;
            border: none;
        }

        .btn-danger:hover {
            box-shadow: 0 0 20px 6px #ff0054;
        }

        .no-data-msg {
            text-align: center;
            color: #bbb;
            font-style: italic;
            padding: 2rem 0;
            font-size: 1.1rem;
        }

        @media (max-width: 768px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }

            thead tr {
                display: none;
            }

            tbody tr {
                margin-bottom: 1rem;
                background-color: #44444e;
                border-radius: 0.5rem;
                padding: 1rem;
            }

            tbody td {
                padding-left: 50%;
                text-align: left;
                position: relative;
                border: none;
                border-bottom: 1px solid #6e00d3;
            }

            tbody td::before {
                content: attr(data-label);
                position: absolute;
                left: 15px;
                font-weight: 700;
                color: #d300ff;
                text-shadow: 0 0 4px #d300ff;
            }

            tbody td:last-child {
                border-bottom: 0;
            }
        }
    </style>
</head>
<body>

<div class="table-container">
    <h2><i class="bi bi-list-ul"></i> Package List</h2>

    <%
        List<EventPackages> packageList = (List<EventPackages>) request.getAttribute("packageList");
        if (packageList != null && !packageList.isEmpty()) {
    %>
    <div class="table-responsive">
        <table>
            <thead>
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
                <td data-label="ID"><%= pkg.getPackage_Id() %></td>
                <td data-label="Name"><%= pkg.getPackage_Name() %></td>
                <td data-label="Type"><%= pkg.getType() %></td>
                <td data-label="Venue"><%= pkg.getVenue() %></td>
                <td data-label="Items"><%= pkg.getItems() != null ? pkg.getItems() : "N/A" %></td>
                <td data-label="Price"><%= pkg.getPrice() != null ? pkg.getPrice() : "N/A" %></td>
                <td data-label="Actions">
                    <a class="btn-purple" href="updatePackage.jsp?id=<%= pkg.getPackage_Id() %>">Update</a>
                    <a class="btn-danger" href="deletePackage.jsp?id=<%= pkg.getPackage_Id() %>"
                       onclick="return confirm('Are you sure you want to delete this package?');">Delete</a>
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
    <p class="no-data-msg">No packages found.</p>
    <%
        }
    %>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
