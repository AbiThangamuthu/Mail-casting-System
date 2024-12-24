<%-- 
    Document   : inbox
    Created on : 09-Oct-2024, 6:56:04 pm
    Author     : abith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    // Get the user session
    //HttpSession session = request.getSession();
    String username = (String) session.getAttribute("username");

    // Check if the user is logged in
    if (username == null) {
        response.sendRedirect("login.jsp"); // Redirect to login if not logged in
    }

    try {
        // Load PostgreSQL JDBC Driver
        Class.forName("org.postgresql.Driver");

        // Establish the connection to the database
        Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mailcasting", "postgres", "Abi@9119");

        // Prepare SQL query to get emails for the logged-in user
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM emails WHERE receiver_email=(SELECT email FROM users WHERE username=?)");
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inbox</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                padding: 5px;
            }
            nav {
                margin-bottom: 20px;
            }
            nav a {
                margin-right: 15px;
                text-decoration: none;
                font-weight: bold;
                font-size: 16px;
            }
        </style>
    </head>
    <body>
        <h1>Inbox</h1>
        
        <!-- Navigation Links -->
        <nav>
            <a href="inbox.jsp">Inbox</a>
            <a href="compose_mail.jsp">Compose Mail</a> <!-- Link to compose mail page -->
        </nav>

        <!-- Email table -->
        <table>
            <tr>
                <th>From</th>
                <th>Subject</th>
                <th>Body</th>
                <th>Sent At</th>
            </tr>
            <%
                while (rs.next()) {
                    out.print("<tr>");
                    out.print("<td>" + rs.getString("receiver_email") + "</td>");
                    out.print("<td>" + rs.getString("subject") + "</td>");
                    out.print("<td>" + rs.getString("body") + "</td>");
                    out.print("<td>" + rs.getTimestamp("sent_at") + "</td>");
                    out.print("</tr>");
                }
            %>
        </table>
    </body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error: " + e.getMessage() + "</p>");
    }
%>
