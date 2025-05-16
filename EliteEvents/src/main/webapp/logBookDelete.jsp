<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Delete Log Book Entry</title>

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

        .form-container {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(255, 0, 84, 0.7);
            max-width: 600px;
            margin: 4rem auto;
            padding: 2rem 2rem;
            color: #f1f1f1;
        }

        h2 {
            color: #ff0054;
            text-shadow: 0 0 8px #ff0054, 0 0 12px #ff0054;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 900;
        }

        label {
            font-weight: 700;
            color: #ff0054;
            text-shadow: 0 0 4px #ff0054;
            cursor: default;
            display: block;
            margin-bottom: 0.5rem;
        }

        input.form-control {
            background-color: #44444e;
            border: 1px solid #ff0054;
            color: #f1f1f1;
            padding: 0.5rem 0.75rem;
            font-size: 1rem;
            border-radius: 0.4rem;
            width: 100%;
            box-sizing: border-box;
        }

        input.form-control[readonly] {
            background-color: #3b3b46;
            color: #bbb;
            border-color: #555;
            cursor: not-allowed;
        }

        .btn-danger {
            background-color: #ff0054;
            box-shadow: 0 0 12px #ff0054;
            color: white;
            border: none;
            padding: 0.6rem 1.2rem;
            font-size: 1.1rem;
            font-weight: 700;
            border-radius: 0.6rem;
            cursor: pointer;
            transition: box-shadow 0.3s ease, transform 0.2s ease;
            width: 100%;
            max-width: 300px;
            display: block;
            margin: 2rem auto 0;
        }

        .btn-danger:hover,
        .btn-danger:focus {
            box-shadow: 0 0 24px 4px #ff0054;
            transform: scale(1.05);
            outline: none;
        }
    </style>
</head>
<body>

<%
    String EvendId = request.getParameter("EvendId");
    String venue = request.getParameter("venue");
    String Date = request.getParameter("Date");
    String customerName = request.getParameter("customerName");
    String rating = request.getParameter("rating");
%>

<div class="container form-container">
    <h2><i class="bi bi-trash3-fill"></i> Delete Event from Log Report</h2>
    <form action="logbookdelete" method="post" name="formDetails">
        <div class="mb-3">
            <label for="EvendId">Event ID:</label>
            <input type="text" class="form-control" id="EvendId" name="EvendId" value="<%= EvendId %>" readonly>
        </div>

        <div class="mb-3">
            <label for="venue">Venue:</label>
            <input type="text" class="form-control" id="venue" name="venue" value="<%= venue %>" readonly>
        </div>

        <div class="mb-3">
            <label for="Date">Date:</label>
            <input type="text" class="form-control" id="Date" name="Date" value="<%= Date %>" readonly>
        </div>

        <div class="mb-3">
            <label for="customerName">Customer Name:</label>
            <input type="text" class="form-control" id="customerName" name="customerName" value="<%= customerName %>" readonly>
        </div>

        <div class="mb-3">
            <label for="rating">User Rating (0-5):</label>
            <input type="text" class="form-control" id="rating" name="rating" value="<%= rating %>" readonly>
        </div>

        <input type="submit" value="Delete this Record" name="delete" class="btn btn-danger" />
    </form>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
