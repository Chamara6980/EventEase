<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Event Manager Dashboard</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 100vh;
        }

        .dashboard-card {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0,0,0,0.5);
            padding: 2rem 1.5rem;
            max-width: 200px;
            width: 200px;
            height: auto;
            margin: 5rem auto;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            gap: 1.5rem;
        }

        h1, p {
            margin: 0;
            padding: 0;
            text-align: center;
        }

        p {
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }

        .btn-glow, .btn-glow-purple {
            box-shadow: 0 0 8px rgba(212, 175, 55, 0.7);
            transition: box-shadow 0.3s ease-in-out;
            border: none;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            width: 100%;
            padding: 0.75rem 0;
        }

        .btn-glow:hover {
            box-shadow: 0 0 20px 5px rgba(212, 175, 55, 0.9);
        }

        /* Purple glow style but keep original bg and text colors */
        .btn-glow-purple {
            box-shadow: 0 0 8px rgba(106, 13, 173, 0.7);
            transition: box-shadow 0.3s ease-in-out;
            border: none;
            font-weight: bold;
            background-color: #6a0dad;  /* original purple background */
            color: #fff;                 /* original white text */
        }

        .btn-glow-purple:hover {
            box-shadow: 0 0 20px 5px rgba(106, 13, 173, 0.9);
        }

        .neon-purple-text {
            color: #d300ff;
            text-shadow: 0 0 8px #d300ff, 0 0 12px #d300ff;
        }

        a.d-block {
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container dashboard-card text-center">
    <h1 class="neon-purple-text">Welcome, Event Manager!</h1>
    <p class="neon-purple-text">Manage your events and resources seamlessly with EventMaster.</p>

    <a href="EnterEvent_manager.jsp" class="d-block">
        <button type="button" class="btn btn-glow" style="background-color: #d4af37; color: #000;">
            <i class="bi bi-calendar-event"></i> Check Events
        </button>
    </a>

    <a href="AddAditionalItems_manager.jsp" class="d-block">
    <button type="button" class="btn btn-glow-purple" style="background-color: #d300ff; color: #fff;">
        <i class="bi bi-box-seam"></i> Add Extra Items
    </button>
</a>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
