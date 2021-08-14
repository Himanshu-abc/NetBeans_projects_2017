<%-- 
    Document   : getdata
    Created on : 6 Apr, 2017, 10:12:47 PM
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
        <%
         request.getParameter("name");
         request.getParameter("email");
         session.setAttribute("nm", request.getParameter("name"));
         session.setAttribute("em", request.getParameter("email"));
         out.print("Data is set in session");

            %>
    </body>
</html>
