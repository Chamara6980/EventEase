<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Event Items</title>
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #f2f2f2, #e6f2ff);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            border-radius: 1rem;
        }
        .form-label {
            font-weight: 500;
        }
        .btn-success, .btn-primary {
            font-weight: bold;
            letter-spacing: 0.5px;
        }
    </style>
</head>
<body>

<%-- Retrieve parameters from request --%>
<%
    String id = request.getParameter("event_id");
    String pck_id = request.getParameter("pck_id");
    String pck_name = request.getParameter("pck_name");
    String type = request.getParameter("type");
    String items = request.getParameter("items");
    String price = request.getParameter("price"); 
%>



<div class="container my-5 p-4 shadow-lg rounded-3" style="background-color: #fff; max-width: 700px;">
    <h1 class="text-center fw-bold mb-4" style="color: #702963;">Update Event Items</h1>
    <form action="UpdateItemsServlet_manager" method="post" onsubmit="return confirmUpdate();">
        <div class="mb-3">
            <label class="form-label">Event ID</label>
            <input type="text" class="form-control" name="evtid" value="<%= id %>" readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Package ID</label>
            <input type="text" class="form-control" name="pck_id" value="<%= pck_id %>"  readonly>
        </div>
        <div class="mb-3">
            <label class="form-label">Package Name</label>
            <input type="text" class="form-control" name="pck_name" value="<%= pck_name %>">
        </div>
        <div class="mb-3">
            <label class="form-label">Type</label>
            <input type="text" class="form-control" name="type" value="<%= type %>">
        </div>
        <div class="mb-3">
            <label class="form-label">Additional Items</label>
            <input type="text" class="form-control" name="Additems" value="<%= items %>">
        </div>
        <div class="mb-3">
            <label class="form-label">Extra Price</label>
            <input type="text" class="form-control" name="Addprice" value="<%= price %>">
        </div>
        <input type="submit" name="submit" value="Update Event" class="btn btn-warning w-100">
    </form>
    <a href="ManagerHome.jsp" class="btn btn-success w-100 mt-3">Go to Home Page</a>
</div>



<script>
    function confirmUpdate() {
        return confirm("Are you sure you want to update this event?");
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>


<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
