<%-- 
    Document   : indexa1
    Created on : 26 May, 2017, 3:20:14 PM
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
      <form method="post" action="registeration1.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Register Faculty Here</th>
                    </tr>
                </thead>
                <tbody>
                   
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    
                      <!--  <td>enrollment</td>
                        <td><input type="text" name="enrollment" value="" /></td>
                    </tr>
                    <tr> -->
                     <tr>
                        <td>department</td>
                         <td><input type="text" name="dept" value="" /></td>
                     </tr> 
                        
                       <!-- <td><input type="radio" name="dept">computer science <br> 
                            <input type="radio" name="dept">mechanical engineering<br>
                            <input type="radio" name="dept">civil engineering<br>
                            <input type="radio" name="dept">chemical engineering
                       </td>  -->
                     <!--         
                     <tr>
                        <td>parent mobile number</td>
                        <td><input type="text" name="pmo" value="" /></td>
                    </tr>
                    <tr>
                        <td>student mobile number</td>
                        <td><input type="text" name="smo" value="" /></td>
                    </tr>    -->
                     <tr>
                        <td> mobile number</td>
                        <td><input type="text" name="mo" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Submit" /></td>
                       
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
