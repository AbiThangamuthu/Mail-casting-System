<%-- 
    Document   : compose_mail
    Created on : 09-Oct-2024, 6:51:10 pm
    Author     : abith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    //HttpSession session = request.getSession();
    String username = (String) session.getAttribute("username");

    if (username == null) {
        response.sendRedirect("login.jsp");  // Redirect to login if not logged in
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Compose Mail</title>
        <style>
            form {
                margin: 20px 0;
            }
        </style>
    </head>
    <body>
        <h1>Compose Mail</h1>

        <!-- Navigation Links -->
        <nav>
            <a href="inbox.jsp">Inbox</a>
            <a href="compose_mail.jsp">Compose Mail</a> <!-- Link to compose mail page -->
        </nav>

        <!-- Form for composing email -->
        <form action="MailServlet" method="post">
            <label for="receiverEmail">To:</label>
            <input type="text" name="receiverEmail" id="receiverEmail" />

            <label for="subject">Subject:</label>
            <input type="text" name="subject" id="subject" required><br><br>

            <label for="body">Body:</label><br>
            <textarea name="body" id="body" rows="10" cols="50" required></textarea><br><br>

            <input type="submit" value="Send">
        </form>
    </body>
</html>
