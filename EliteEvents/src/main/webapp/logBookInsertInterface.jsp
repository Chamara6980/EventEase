<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Log Book Insert</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 100vh;
        }

        .form-container {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0,0,0,0.5);
            max-width: 400px;
            width: 90%;
            margin: 4rem auto;
            padding: 2rem 2rem;
            color: #f1f1f1;
        }

        h2 {
            color: #d300ff;
            text-shadow: 0 0 8px #d300ff, 0 0 12px #d300ff;
            text-align: center;
            margin-bottom: 2rem;
        }

        label {
            display: block;
            margin-bottom: 0.3rem;
            font-weight: 600;
            color: #d300ff;
            text-shadow: 0 0 6px #d300ff;
        }

        input[type="text"] {
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

        input[type="text"]:focus {
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
        }

        input[type="submit"]:hover {
            box-shadow: 0 0 24px 6px #d300ff;
        }

        .redirect-button {
            display: block;
            width: 100%;
            margin-top: 1.5rem;
            padding: 0.75rem;
            border: none;
            border-radius: 0.75rem;
            background-color: #8a2be2;
            color: #fff;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            box-shadow: 0 0 12px #8a2be2;
            transition: box-shadow 0.3s ease-in-out, transform 0.2s;
        }

        .redirect-button:hover {
            box-shadow: 0 0 24px 6px #8a2be2;
            transform: scale(1.03);
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Log Report</h2>
    
    <form action="logbookinsert" method="post" name="formDetails">
        <label for="EventId">Event ID</label>
        <input type="text" class="form-control" placeholder="Event ID" name="EvendId" required>

        <label for="venue">Venue</label>
        <input type="text" class="form-control" placeholder="Event Venue" name="venue" required>

        <label for="date">Date</label>
        <input type="text" class="form-control" placeholder="Date (YYYY-MM-DD)" name="Date" required>

        <label for="customerName">Customer Name</label>
        <input type="text" class="form-control" placeholder="Customer Name" name="customerName" required>

        <label for="rating">User Rating (0-5)</label>
        <input type="text" class="form-control" placeholder="0 - 5" name="rating" min="0" max="5" required>

        <input type="submit" id="addBtn" value="Add Log Entry" name="add">
    </form>

    <a href="customerCareAgent.jsp" class="redirect-button">Go to Dashboard</a>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
