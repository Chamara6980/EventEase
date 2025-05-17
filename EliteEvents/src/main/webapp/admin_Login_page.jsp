<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(135deg, #1c1c2b, #2f2f44);
      font-family: 'Poppins', sans-serif;
      color: #fff;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .login-card {
      background-color: #2a2a3b;
      border-radius: 20px;
      padding: 40px;
      box-shadow: 0 0 25px rgba(111, 66, 193, 0.3);
      width: 100%;
      max-width: 500px;
      transition: transform 0.3s ease;
    }

    .login-card:hover {
      transform: scale(1.02);
    }

    .login-card h3 {
      color: #c6b3f5;
      font-weight: 600;
      margin-bottom: 30px;
      text-align: center;
    }

    .form-label {
      color: #ddd;
    }

    .form-control {
      background-color: #34344a;
      border: 1px solid #6f42c1;
      color: #ffffff;
      border-radius: 10px;
    }

    .form-control:focus {
      border-color: #b99af5;
      box-shadow: 0 0 0 0.2rem rgba(185, 150, 255, 0.25);
    }

    .btn-primary {
      background-color: #6f42c1;
      border: none;
      border-radius: 12px;
      padding: 10px 0;
      font-weight: 500;
      transition: background-color 0.3s ease;
    }

    .btn-primary:hover {
      background-color: #5a35a0;
    }

    .btn-outline-secondary {
      border-color: #a88ee0;
      color: #a88ee0;
      border-radius: 12px;
    }

    .btn-outline-secondary:hover {
      background-color: #a88ee0;
      color: #2a2a3b;
    }

    .alert-danger {
      background-color: #8a3c3c;
      border: none;
      border-radius: 8px;
      color: #f8d7da;
    }

    .card-footer a {
      text-decoration: none;
    }
  </style>
</head>

<body>

  <div class="login-card">
    <h3>Admin Login</h3>

    <!-- if user enter empty values -->
    <c:if test="${not empty error}">
      <div class="alert alert-danger text-center">
        ${error}
      </div>
    </c:if>

    <form action="login" method="POST">
       
      <div class="mb-3">
        <label for="username" class="form-label">User Name:</label>
        <input type="text" id="username" name="Username" class="form-control" required>
      </div>
      
      <div class="mb-4">
        <label for="password" class="form-label">Password:</label>
        <input type="password" id="password" name="Password" class="form-control" required>
      </div>

      <div class="d-grid mb-3">
        <input type="submit" name="submit" value="Login" class="btn btn-primary">
      </div>
    </form>

    <div class="card-footer text-center mt-3">
      <a class="btn btn-sm btn-outline-secondary" href="homepage.jsp">Navigate To HomePage</a>
    </div>
  </div>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>


</html>
