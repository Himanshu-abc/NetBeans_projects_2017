<%-- 
    Document   : login
    Created on : 12 May, 2017, 2:38:40 PM
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
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from minor_s where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", userid);
        
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("welcome1.jsp");
    } else {
        out.println("Invalid password <a href='indexs.html'>try again</a>");
    }
%> 
    </body>
</html>

