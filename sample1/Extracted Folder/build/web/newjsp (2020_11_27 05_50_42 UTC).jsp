<%-- 
    Document   : newjsp
    Created on : 2 Apr, 2017, 6:19:33 PM
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
        <h1>Hello World!</h1>
        <%
            request.getParameter("name");
            request.getParameter("email");
            request.getParameter("number");
            %>
        <%=%>    
            
    </body>
</html>
