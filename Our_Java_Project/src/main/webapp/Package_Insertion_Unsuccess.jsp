<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Unsuccess</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <style>
        body {
            background-color: #f8f9fa;
            text-align: center;
            padding-top: 100px;
        }
        .message-container {
            max-width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>

<div class="container message-container">
    <div class="alert alert-danger" role="alert">
        <h4 class="alert-heading">Unsuccessful!</h4>
        <p>There was an error with your operation. Please try again.</p>
        <hr>
        <p class="mb-0">If the issue persists, please contact support.</p>
    </div>
    <a href="retry.jsp" class="btn btn-danger">Try Again</a>
</div>

</body>
</html>
