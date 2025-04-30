 
<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <title>Event Creator Login</title>  
</head>  


<body>  
    <h2>Event Creator Login</h2>  

    <!-- Display error message if login fails -->  
    <c:if test="${not empty error}">  
        <p style="color: red;">${error}</p>  
    </c:if>  

    <form action="log" method="POST">
      
        <label for="username">User Name:</label>   
        <input type="text" id="username" name="EC_Username" required><br> 
         
        <label for="password">Password:</label>   
        <input type="password" id="password" name="EC_Password" required><br>  
        
        <input type="submit" name="submit" value="Login">  
        
    </form>  
</body>  
</html>  