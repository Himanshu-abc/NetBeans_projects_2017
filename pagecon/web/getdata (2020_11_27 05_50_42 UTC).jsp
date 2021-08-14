<%-- 
    Document   : getdata
    Created on : 6 Apr, 2017, 12:33:58 PM
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
    <h1>
        Session Scope   <%= pageContext.getAttribute("var1",PageContext.SESSION_SCOPE) %><br> 
        Application scope <%= pageContext.getAttribute("var2",PageContext.APPLICATION_SCOPE) %><br> 
         Request scope  <%= pageContext.getAttribute("var3",PageContext.REQUEST_SCOPE) %> 
        </h1>
        
    </body>
</html>
