<%-- 
    Document   : exceptionpage
    Created on : 6 Apr, 2017, 10:15:54 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="exceptiionhandler.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="exceptionpage.jsp">
        <input type="text" name="num1" value="" />    
        <input type="text" name="num2" value="" />
        <input type="submit" value="submit" name="sub"/>
    </form>
    <%
        if(request.getParameter("sub")!=null){
      int i=0,j=0;
      i=Integer.parseInt(request.getParameter("num1"));
      j=Integer.parseInt(request.getParameter("num2"));
      out.print("Divided value: "+(i / j));

    }
%>
    </body>
</html>
