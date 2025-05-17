<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Unsuccessful</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <style>
        .main-content {
            background: linear-gradient(135deg, #1f1f1f, #4c4c4c);
            color: #f1f1f1;
            min-height: 60vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 3rem 1rem;
            margin-top: -15px;
        }

        .card-box {
            background-color: #2d2d35;
            border-radius: 1rem;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
            padding: 3rem;
            max-width: 500px;
            width: 100%;
            text-align: center;
            margin-top: -15px;
        }

        h1 {
            color: #ff4c4c; /* red-ish for failure */
            text-shadow: 0 0 8px #ff4c4c, 0 0 12px #ff4c4c;
            margin-bottom: 2rem;
        }

        .btn-home {
            display: inline-block;
            padding: 0.75rem 2rem;
            border: none;
            border-radius: 0.75rem;
            background-color: #dc3545; /* bootstrap danger red */
            color: #fff;
            font-weight: bold;
            text-decoration: none;
            box-shadow: 0 0 12px #dc3545;
            transition: box-shadow 0.3s ease, transform 0.2s;
        }

        .btn-home:hover {
            box-shadow: 0 0 24px 6px #dc3545;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<div class="main-content">
    <div class="card-box">
        <h1>Insert Unsuccessful</h1>
        <a href="ManagerHome.jsp" class="btn-home">Go to Home Page</a>
    </div>
</div>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
