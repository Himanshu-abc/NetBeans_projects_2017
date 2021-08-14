<%-- 
    Document   : chats
    Created on : 28 May, 2017, 7:57:55 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ASAP Chat</title>
    </head>
    <body>
      <body bgcolor="#7CFC00">
         <center>
        <h1>ASAP CHAT</h1>
        <br>
        <br>
        
       <br><br>
        <h2>LOGIN</h2>
        <form name="userLogin" action="userlogin1" method="POST">
        
            <table border="0" width="30" cellspacing="8" cellpadding="20">

                <tbody>
                    <tr>
                        <td>USERNAME:</td>
                        <td><input type="text" name="user" value="" /></td>
                    </tr>
                    
                </tbody>
            </table>   
            <input type="submit" value="JOIN CHAT ROOM" name="log in" /> 
            
        </form>
    </body>
</html>
