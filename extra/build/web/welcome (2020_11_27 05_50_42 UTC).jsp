<%-- 
    Document   : welcome
    Created on : 12 May, 2017, 2:49:49 PM
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
        
        <h1>Welcome <%=session.getAttribute("username")%></h1>
        <h1> You just successfully logged  in !</h1>
       <h4> Click here to change your password <a href="password/changepassword.jsp"> Change Password </a> </h4>
       <br><br><br>
       
       <h4> click here to upload your pic <a href="pic/pic.jsp"> upload pic </a>  </h4>
       <br><br><br>
       
       <h4><a href="invalidate.jsp">Log out</a></h4>
       
    </body>
</html>
