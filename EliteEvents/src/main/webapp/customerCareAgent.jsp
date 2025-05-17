<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Care Agent Page</title>

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
            max-width: 250px;
            width: 100%;
            margin: 5rem auto;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            gap: 1.5rem;
        }

        h2, p {
            margin: 0;
            padding: 0;
            text-align: center;
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

        .btn-glow-purple {
            box-shadow: 0 0 8px rgba(106, 13, 173, 0.7);
            background-color: #d300ff;
            color: #fff;
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
    <h2 class="neon-purple-text">Welcome, Customer Care Agent!</h2>
    <p class="neon-purple-text">Manage support records and communication efficiently.</p>

    <a href="logBookInsertInterface.jsp" class="d-block">
        <button class="btn btn-glow" style="background-color: #d4af37; color: #000;">
            <i class="bi bi-journal-plus"></i> Add Log Book Entry
        </button>
    </a>

    <a href="logBookView.jsp" class="d-block">
        <button class="btn btn-glow-purple" style="background-color: #d300ff; color: #fff;">
            <i class="bi bi-journal-text"></i> View Log Book
        </button>
    </a>

    <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox" class="d-block">
        <button class="btn btn-glow" style="background-color: #d4af37; color: #000;">
            <i class="bi bi-envelope-at"></i> Check Emails
        </button>
    </a>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
