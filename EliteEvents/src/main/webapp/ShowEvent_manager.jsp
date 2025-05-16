<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Event Details</title>

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
            margin-bottom: 1.5rem;
        }

        tbody tr:nth-child(odd) td {
            background-color: #44444e;
        }

        tbody tr:nth-child(even) td {
            background-color: #3e3e4f;
        }

        tbody td {
            padding: 12px 15px;
            border: 1px solid #6e00d3;
            text-align: left;
            vertical-align: middle;
        }

        tbody tr:hover td {
            background-color: #6e00d3;
            color: #fff;
            cursor: default;
            transition: background-color 0.3s ease;
            box-shadow: 0 0 10px 2px #d300ff;
        }

        th {
            background-color: #3e3e4f;
            color: #d300ff;
            padding: 12px 15px;
            border: 1px solid #6e00d3;
            font-weight: 700;
            text-align: left;
            text-shadow: 0 0 4px #d300ff;
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

        .btn-group {
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 2rem;
        }

        .btn-group a {
            flex: 1;
        }

        .btn-success {
            display: block;
            width: 100%;
            margin-top: 1.5rem;
            font-weight: 900;
        }

        @media (max-width: 768px) {
            .table-container {
                margin: 2rem 1rem;
                padding: 1rem 1rem;
            }
        }
    </style>
</head>
<body>



<div class="table-container">
    <h2><i class="bi bi-info-circle"></i> Event Details</h2>
    <table>
        <tbody>
            <c:forEach var="evt" items="${eventDetails}">
                <c:set var="event_id" value="${evt.event_id}" />
                <c:set var="pck_id" value="${evt.pck_id}" />
                <c:set var="pck_name" value="${evt.pck_name}" />
                <c:set var="type" value="${evt.type}" />
                <c:set var="items" value="${evt.items}" />
                <c:set var="price" value="${evt.price}" />

                <tr>
                    <th>Event ID</th>
                    <td>${evt.event_id}</td>
                </tr>
                <tr>
                    <th>Package ID</th>
                    <td>${evt.pck_id}</td>
                </tr>
                <tr>
                    <th>Package Name</th>
                    <td>${evt.pck_name}</td>
                </tr>
                <tr>
                    <th>Type</th>
                    <td>${evt.type}</td>
                </tr>
                <tr>
                    <th>Items</th>
                    <td>${evt.items}</td>
                </tr>
                <tr>
                    <th>Price</th>
                    <td>${evt.price}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="btn-group">
        <c:url value="UpdateItems_manager.jsp" var="evtupdate">
            <c:param name="event_id" value="${event_id}" />
            <c:param name="pck_id" value="${pck_id}" />
            <c:param name="pck_name" value="${pck_name}" />
            <c:param name="type" value="${type}" />
            <c:param name="items" value="${items}" />
            <c:param name="price" value="${price}" />
        </c:url>
        <a href="${evtupdate}" class="btn-purple">Update Event</a>

        <c:url value="DeleteEvent_manager.jsp" var="evtdelete">
            <c:param name="event_id" value="${event_id}" />
            <c:param name="pck_id" value="${pck_id}" />
            <c:param name="pck_name" value="${pck_name}" />
            <c:param name="type" value="${type}" />
            <c:param name="items" value="${items}" />
            <c:param name="price" value="${price}" />
        </c:url>
        <a href="${evtdelete}" class="btn-danger" onclick="return confirm('Are you sure you want to delete this event?');">Delete Event</a>
    </div>

    <a href="ManagerHome.jsp" class="btn btn-success">Go to Home Page</a>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
