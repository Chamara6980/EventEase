<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARE YOU USER OR ADMIN ?</title>
<style>
  /* Styles for the modal overlay */
  .modal-overlay {
    position: fixed; /* Stay in place */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    background-color: rgba(0,0,0,0.5); /* Black background with opacity */
    display: flex; /* Use flexbox for centering */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    z-index: 1000; /* Sit on top */
  }

  /* Styles for the modal content box */
  .modal-content {
    background-color: #fff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    text-align: center;
    width: 90%;
    max-width: 400px; /* Maximum width of the modal */
  }

  .modal-content h2 {
    margin-top: 0;
    margin-bottom: 20px;
    font-size: 1.5em;
    color: #333;
  }

  /* Styles for the buttons */
  .modal-content button {
    padding: 12px 25px;
    margin: 0 10px;
    font-size: 1em;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    color: white;
    transition: background-color 0.3s ease;
  }

  .modal-content .user-btn {
    background-color: #28a745; /* Green */
  }

  .modal-content .user-btn:hover {
    background-color: #218838; /* Darker Green */
  }

  .modal-content .admin-btn {
    background-color: #007bff; /* Blue */
  }

  .modal-content .admin-btn:hover {
    background-color: #0056b3; /* Darker Blue */
  }
</style>
</head>
<body>

<div id="roleSelectionModal" class="modal-overlay">
  <div class="modal-content">
    <h2>Are you a User or an Admin?</h2>
    <button class="user-btn" onclick="navigateToUserLogin()">User</button>
    <button class="admin-btn" onclick="navigateToAdminLogin()">Admin</button>
  </div>
</div>

<script type="text/javascript">


  // Function for user pages
  function navigateToUserLogin() {
    window.location.href = 'login.jsp'; // [2]
  }

  // function for admin pages
  function navigateToAdminLogin() {
    window.location.href = 'admin_Login_page.jsp'; // [2]
  }
</script>

</body>
</html>
