<%-- 
    Document   : condition
    Created on : 28 May, 2017, 5:33:05 PM
    Author     : Dell
--%>
<%@page import="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
    String username = request.getParameter("user");  
    out.println(username);
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from hello_message where username='" + username + "' ");
    if (rs.next()) {
        session.setAttribute("username", username);
        
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("userLogin");
    } else {
        
       // response.sendRedirect("failure.html");
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%> 
    </body>
</html>
