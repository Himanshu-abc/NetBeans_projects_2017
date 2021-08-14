<%-- 
    Document   : registeration
    Created on : 12 Apr, 2017, 9:13:57 AM
    Author     : Dell
--%>
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
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into main(username, password) values ('" + user + "','" + pwd + "')");
    
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.html");
    }
%> 
    </body>
</html>
