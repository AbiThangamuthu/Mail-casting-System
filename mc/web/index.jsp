<%-- 
    Document   : index
    Created on : 15-Oct-2024, 8:38:08 pm
    Author     : abith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MailCasting - Welcome</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                padding: 50px;
            }
            h1 {
                color: #333;
            }
            .container {
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
                max-width: 400px;
                margin: 0 auto;
            }
            .login-button {
                display: inline-block;
                background-color: #007bff;
                color: #fff;
                padding: 10px 20px;
                text-decoration: none;
                border-radius: 5px;
                margin-top: 20px;
            }
            .login-button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Welcome to MailCasting</h1>
            <p>Your go-to platform for managing your emails efficiently.</p>

            <!-- Link to login page -->
            <a href="login.jsp" class="login-button">Login</a>
        </div>
    </body>
</html>
