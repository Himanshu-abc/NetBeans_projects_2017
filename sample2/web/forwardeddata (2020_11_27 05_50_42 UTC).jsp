<%-- 
    Document   : forwardeddata
    Created on : 2 Apr, 2017, 8:24:04 PM
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
            <h1> welcome to page
            <%
       out.println(request.getAttribute("extra"));
             %>
    </h1>
             <%
       out.println(request.getParameter("name"));
       out.println(request.getParameter("email"));
       out.println(request.getParameter("num"));    
            
            
            %>
        
        
        
    </body>
</html>
