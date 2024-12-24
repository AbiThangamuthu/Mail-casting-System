<%-- 
    Document   : login
    Created on : 09-Oct-2024, 6:06:46 pm
    Author     : abith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Styling the form container */
        .login-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        /* Styling the form title */
        .login-container h1 {
            color: #333;
            margin-bottom: 30px;
        }

        /* Input fields styling */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Submit button styling */
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Hover effect for the submit button */
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Link styling for Sign Up */
        a.login-button {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #2196F3;
            color: white;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
        }

        /* Hover effect for the sign-up button */
        a.login-button:hover {
            background-color: #0b7dda;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <form action="login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Login">
        </form>
        <a href="signup.jsp" class="login-button">Sign Up</a>
    </div>
</body>
</html>

