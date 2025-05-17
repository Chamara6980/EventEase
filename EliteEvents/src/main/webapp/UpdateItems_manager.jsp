<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Event Items</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous" />

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
            width: 90%;
            margin: 4rem auto;
            padding: 2rem 2rem;
            color: #f1f1f1;
        }

        h1 {
            color: #d300ff;
            text-shadow: 0 0 8px #d300ff, 0 0 12px #d300ff;
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 900;
        }

        label {
            display: block;
            margin-bottom: 0.3rem;
            font-weight: 600;
            color: #d300ff;
            text-shadow: 0 0 6px #d300ff;
        }

        input[type="text"], input[type="number"] {
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

        input[type="text"]:focus, input[type="number"]:focus {
            background-color: #5a1aff;
            outline: none;
            box-shadow: 0 0 12px #d300ff;
            color: white;
        }

        input[readonly] {
            background-color: #33333d;
            color: #bbb;
            cursor: not-allowed;
            box-shadow: none;
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
            font-size: 1.1rem;
        }

        input[type="submit"]:hover {
            box-shadow: 0 0 24px 6px #d300ff;
        }

        /* New home button styles */
        .btn-home {
            display: block;
            width: 100%;
            margin-top: 1.5rem;
            padding: 0.75rem;
            border: none;
            border-radius: 0.75rem;
            background-color: #8a2be2; /* Electric Violet */
            color: #fff;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            box-shadow: 0 0 12px #8a2be2;
            transition: box-shadow 0.3s ease-in-out, transform 0.2s;
        }

        .btn-home:hover {
            box-shadow: 0 0 24px 6px #8a2be2;
            transform: scale(1.03);
        }
    </style>
</head>
<body>

<%
    String id = request.getParameter("event_id");
    String pck_id = request.getParameter("pck_id");
    String pck_name = request.getParameter("pck_name");
    String type = request.getParameter("type");
    String items = request.getParameter("items");
    String price = request.getParameter("price");
%>

<div class="form-container">
    <h1>Update Event Items</h1>
    <form action="UpdateItemsServlet_manager" method="post" onsubmit="return confirmUpdate();">
        <label for="evtid">Event ID</label>
        <input type="text" id="evtid" name="evtid" value="<%= id %>" readonly />

        <label for="pck_id">Package ID</label>
        <input type="text" id="pck_id" name="pck_id" value="<%= pck_id %>" readonly />

        <label for="pck_name">Package Name</label>
        <input type="text" id="pck_name" name="pck_name" value="<%= pck_name %>" />

        <label for="type">Type</label>
        <input type="text" id="type" name="type" value="<%= type %>" />

        <label for="Additems">Additional Items</label>
        <input type="text" id="Additems" name="Additems" value="<%= items %>" />

        <label for="Addprice">Extra Price</label>
        <input type="text" id="Addprice" name="Addprice" value="<%= price %>" />

        <input type="submit" name="submit" value="Update Event" />
    </form>

    <a href="ManagerHome.jsp" class="btn-home">Go to Home Page</a>
</div>

<script>
    function confirmUpdate() {
        return confirm("Are you sure you want to update this event?");
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<%@ include file="footer.jsp" %>
</body>
</html>
