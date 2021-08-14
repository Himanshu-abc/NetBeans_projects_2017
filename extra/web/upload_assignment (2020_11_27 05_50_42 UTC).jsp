<%-- 
    Document   : upload_assignment
    Created on : 16 May, 2017, 10:48:00 PM
    Author     : Dell
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Service Access Portal</title>
  
  
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Days+One'>

      <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
       <div class="page">
  <div class="nav">
          <a href="welcome1.jsp"><div id="i-mail" title="Home"></div> Home </a>
    <a href="profile.jsp"> <div id="i-fb" title="Profile" ></div> Profile </a>
    <a href="upload_assignment.jsp"><div id="i-insta" title="Upload Assignment"></div> Upload Assignment</a>
    
    <a href="chats.jsp"> <div id="i-lab" title="Chat"></div> Chat </a>
    <a href="password/changepassword.jsp"><div id="i-changepass" title="Change Password"></div> Change password </a>
    <a href="invalidate.jsp"><div id="i-imprint"  title="Logout"></div> Logout </a>
  </div>
  <div class="textbox">
    <div class="header">All Service Access Portal</div>
    <div class="content">
        <h6> Hello, <%=session.getAttribute("username")%></h6>
      
        <!-- <h6><a href="pic/pic.jsp"> update pic </a>  </h6> -->
     <% String username=(String)session.getAttribute("username");  %>
     
     New  Assignments <br>
     <form action="upload_assignment1.jsp" method="post"  >
         Enter Faculty Name <input  type="text" name="faculty"> 
         Enter Current Year <input  type="text" name="year"> 
         <input type="submit" value="search">
     </form>
     <br><br><br>
     
     <form method="post" action="${pageContext.request.contextPath}/uploadToDB2"  enctype="multipart/form-data">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">UPLOAD COMPLETED ASSIGNMENTS</th>
                    </tr>
                </thead>
                <tbody>
                    
                    
                    <tr>
                        <td>department</td>
                         <td><input type="text" name="dept" value="" /></td>
                       </tr>   
                       <tr>
                        <td>Student year</td>
                         <td><input type="text" name="year" value="" /></td>
                    </tr>
                     <tr>
                        <td>Assignment</td>
                        <td><input type="file" name="photo" value="" /></td>
                    </tr>
                    <tr>
                        
                        <td><input type="submit" value="Upload" /></td>
                       
                    </tr>
                   
                </tbody>
            </table>
            </center>
        </form>
    
    </body>
</html>
