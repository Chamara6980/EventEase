<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Error - Admin</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #121212;
            color: #d8b4f2;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        main {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .error-card {
            background-color: #1a1a2e;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 0 20px #9b59b6;
            max-width: 450px;
            width: 100%;
            text-align: center;
        }

        .error-card h1 {
            color: #d8b4f2;
            font-weight: 700;
            margin-bottom: 20px;
            text-shadow: 0 0 10px #d8b4f2;
        }

        .error-card p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            text-shadow: 0 0 5px #9b59b6;
        }

        .btn-neon {
            background-color: #9b59b6;
            color: #fff;
            border-radius: 12px;
            padding: 10px 30px;
            font-weight: 600;
            box-shadow: 0 0 15px #d8b4f2;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .btn-neon:hover {
            background-color: #d8b4f2;
            color: #121212;
            box-shadow: 0 0 25px #d8b4f2;
        }
    </style>
</head>
<body>

    <%@ include file="header.jsp" %>

    <main>
        <div class="error-card" role="alert" aria-live="assertive" aria-atomic="true">
            <h1>Login Error</h1>
            <p>Try Again.........</p>
            <a href="admin_Login.jsp" class="btn btn-neon">Back to Login</a>
        </div>
    </main>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
