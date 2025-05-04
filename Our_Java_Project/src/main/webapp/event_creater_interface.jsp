<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Event Creator Interface</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        input[type="submit"], input[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover, input[type="button"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Create New Package</h2>
    <form action="insert" method="post">
        Package ID: <input type="number" name="Package_Id" required><br>
        Package Name: <input type="text" name="Package_Name" required><br>
        Type: <input type="text" name="Type" required><br>
        Venue: <input type="text" name="Venue" required><br>
        Items: <input type="text" name="Items" required><br>
        Price: <input type="text" name="Price" required><br><br>
        <input type="submit" value="Create Package">
    </form>

    <br><br>

    <!-- View Packages Button -->
    <form action="view" method="get">
        <input type="submit" value="View All Packages">
    </form>
</body>
</html>
