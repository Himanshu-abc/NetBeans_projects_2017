<%-- 
    Document   : pagecontext
    Created on : 6 Apr, 2017, 12:27:33 PM
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
        <h1>Setting Data through page context implicit object in session   <%
         pageContext.setAttribute("var1","Himanshu Patidar",pageContext.SESSION_SCOPE);
         pageContext.setAttribute("var2","Himanshu Patidar",pageContext.APPLICATION_SCOPE);
         pageContext.setAttribute("var3","Himanshu Patidar",pageContext.REQUEST_SCOPE);
        
        %></h1>
    </body>
</html>
