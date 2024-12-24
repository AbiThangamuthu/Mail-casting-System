/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

/**
 *
 * @author abith
 */
@WebServlet(name = "MailServlet", urlPatterns = {"/MailServlet"})
public class MailServlet extends HttpServlet {protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String receiverEmail = request.getParameter("receiverEmail");
        String subject = request.getParameter("subject");
        String body = request.getParameter("body");
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        try {
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/mailcasting", "postgres", "Abi@9119");

            PreparedStatement psSender = conn.prepareStatement("SELECT id FROM users WHERE username=?");
            psSender.setString(1, username);
            ResultSet rs = psSender.executeQuery();

            if (rs.next()) {
                int senderId = rs.getInt("id");
                PreparedStatement psMail = conn.prepareStatement("INSERT INTO emails (sender_id, receiver_email, subject, body) VALUES (?, ?, ?, ?)");
                psMail.setInt(1, senderId);
                psMail.setString(2, receiverEmail);
                psMail.setString(3, subject);
                psMail.setString(4, body);
                psMail.executeUpdate();

                response.getWriter().println("Email Sent Successfully!");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
