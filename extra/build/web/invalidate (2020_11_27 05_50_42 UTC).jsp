<%-- 
    Document   : invalidate
    Created on : 15 May, 2017, 11:25:24 AM
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
        <% session.invalidate();%>
        <% HttpSession nsession = request.getSession(false);
        if(nsession!=null){
            String data=(String)session.getAttribute("username");
            out.println(data);
        }
        else
            out.println("session is not active");
         response.sendRedirect("index0.jsp");
        %>
        }
    </body>
</html>
