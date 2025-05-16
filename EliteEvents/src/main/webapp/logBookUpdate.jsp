<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Log Book Update</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

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
    box-shadow: 0 0 20px rgba(211, 0, 255, 0.7);
    max-width: 600px;
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

label {
    font-weight: 700;
    color: #d300ff;
    text-shadow: 0 0 4px #d300ff;
    cursor: pointer;
    display: block;
    margin-bottom: 0.5rem;
}

input.form-control {
    background-color: #44444e;
    border: 1px solid #6e00d3;
    color: #f1f1f1;
    padding: 0.5rem 0.75rem;
    font-size: 1rem;
    border-radius: 0.4rem;
    transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
    width: 100%;
    box-sizing: border-box;
}

input.form-control:focus {
    background-color: #55555f;
    border-color: #d300ff;
    box-shadow: 0 0 8px #d300ff;
    color: #fff;
    outline: none;
}

input[readonly].form-control {
    background-color: #3b3b46;
    color: #bbb;
    border-color: #555;
    cursor: not-allowed;
}

.text-center {
    text-align: center;
}
 .btn-purple {
    background: linear-gradient(135deg, #a100ff, #d300ff);
    color: white;
    border: none;
    padding: 0.6rem 1.4rem;
    font-size: 1rem;
    font-weight: 700;
    border-radius: 0.6rem;
    box-shadow: 0 4px 12px rgba(211, 0, 255, 0.6);
    transition: transform 0.2s ease, box-shadow 0.3s ease, background 0.3s ease;
    cursor: pointer;
    display: inline-flex;
    align-items: center;
    gap: 0.4rem;
}

.btn-purple:hover, 
.btn-purple:focus {
    background: linear-gradient(135deg, #d300ff, #a100ff);
    box-shadow: 0 6px 20px rgba(211, 0, 255, 0.9);
    transform: scale(1.05);
    outline: none;
}

.btn-purple i {
    font-size: 1.2rem;
}



@media (max-width: 576px) {
    .form-container {
        margin: 2rem 1rem;
        padding: 1.5rem 1rem;
    }

    input.form-control {
        font-size: 0.9rem;
    }

    .btn-purple {
        width: 100%;
        padding: 0.6rem 0;
        font-size: 1.1rem;
    }
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
    <h2><i class="bi bi-pencil-square"></i> Update Log Report</h2>
    <form action="logbookupdate" method="post" name="formDetails">
        <div class="mb-3">
            <label for="EventId" class="form-label">Event ID:</label>
            <input type="text" class="form-control" placeholder="Event ID" name="EvendId" value="<%= EvendId %>" readonly>
        </div>
        
        <div class="mb-3">
            <label for="venue" class="form-label">Venue:</label>
            <input type="text" class="form-control" placeholder="Event venue" name="venue" value="<%= venue %>">
        </div>
        
        <div class="mb-3">
            <label for="date" class="form-label">Date:</label>
            <input type="text" class="form-control" placeholder="Date" name="Date" value="<%= Date %>">
        </div>
        
        <div class="mb-3">
            <label for="customerName" class="form-label">Customer Name:</label>
            <input type="text" class="form-control" placeholder="Customer Name" name="customerName" value="<%= customerName %>">
        </div>
        
        <div class="mb-3">
            <label for="rating" class="form-label">User Rating (0-5):</label>
            <input type="text" class="form-control" name="rating" min="0" max="5" step="0.1" value="<%= rating %>">
        </div>
        
        <div class="text-center mt-4">
            <button type="submit" name="update" class="btn btn-purple">
                <i class="bi bi-cloud-arrow-up-fill"></i> Update Log Book
            </button>
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
