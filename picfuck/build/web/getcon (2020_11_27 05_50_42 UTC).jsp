<%-- 
    Document   : getcon
    Created on : 23 Apr, 2017, 6:22:33 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ page import="java.sql.*" %> 
<%!Statement st=null; 
Connection cn=null; 
%> 
<% 
Class.forName("oracle.jdbc.OracleDriver"); 
cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse"); 
st=cn.createStatement();
out.println("Connection Successsfull");
%> 

    </body>
</html>
