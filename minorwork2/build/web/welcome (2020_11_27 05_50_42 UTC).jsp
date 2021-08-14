<%-- 
    Document   : welcome
    Created on : 18 Apr, 2017, 12:11:40 PM
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
       <h1> You just successfully logged  in !</h1>
       <h4> Click here to change your password <a href="changepassword.jsp"> Change Password </a> </h4>
       <br><br><br>
       
       <form action="profile.jsp" method="post" enctype="multipart/form-data">
        Upload your profile picture <input type="file" name="picture">
            <input type="submit" value="save">
        </form>
       
        
    </body>
</html>
