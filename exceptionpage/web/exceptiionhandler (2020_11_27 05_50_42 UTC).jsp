<%-- 
    Document   : exceptiionhandler
    Created on : 6 Apr, 2017, 10:20:26 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>you have to enter greater than 0</h1>
        <h2><% exception.printStackTrace(); %></h2>
        <h3><%= exception %></h3>
        <br><% out.print(exception);%>
        
    </body>
</html>
