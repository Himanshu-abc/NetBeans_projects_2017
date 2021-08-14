<%-- 
    Document   : fetchdata
    Created on : 6 Apr, 2017, 10:18:00 PM
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
        <h1><%=session.getAttribute("nm")%></h1>
        <h1><%=session.getAttribute("em")%></h1>  
        <h1><%=session.getId() %></h1>  
        <%--   <%
        session.invalidate();
        %>     --%>
          <%
        session.setMaxInactiveInterval(30);
            %>            
    </body>
</html>
