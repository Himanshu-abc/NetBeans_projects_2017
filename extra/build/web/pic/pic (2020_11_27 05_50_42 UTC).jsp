<%-- 
    Document   : pic
    Created on : 14 May, 2017, 6:56:32 PM
    Author     : Dell
--%>

<%@page import="java.sql.ResultSet"%>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
        <% String username=(String)session.getAttribute("username");
           out.println(username);                          %>
        
         <form action="profilecontroller.jsp" method="post" enctype="multipart/form-data">
            <input type="file" name="picture">
            <input type="submit" value="save">
        </form>
    </body>
</html>
