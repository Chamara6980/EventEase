<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book an Event</title>
<style>
.book-btn {
    display: inline-block;
    padding: 14px 32px;
    font-size: 18px;
    font-weight: 600;
    color: #fff;
    background: linear-gradient(90deg, #007bff 0%, #00c6ff 100%);
    border: none;
    border-radius: 8px;
    box-shadow: 0 4px 16px rgba(0,123,255,0.12);
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
    letter-spacing: 1px;
    text-transform: uppercase;
}
.book-btn:hover {
    background: linear-gradient(90deg, #0056b3 0%, #007bff 100%);
    transform: translateY(-2px) scale(1.04);
    box-shadow: 0 6px 20px rgba(0,123,255,0.18);
}
</style>
</head>
<body>

<!-- Example as a submit button in a form -->
<a href="bookingForm" class="book-btn">Book Event</a>
<a href="login" class="book-btn">Login</a>
<a href="register" class="book-btn">Register</a>


<!-- Or as a standalone button/link -->
<!--
<a href="insertBooking" class="book-btn">Book Event</a>
-->

</body>
</html>
