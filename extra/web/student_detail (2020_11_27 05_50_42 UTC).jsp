<%-- 
    Document   : student_detail
    Created on : 28 May, 2017, 6:43:35 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Days+One'>

      <link rel="stylesheet" href="css/style.css">
        
        
    </head>
    <body>
        
          
         <div class="page">
  <div class="nav">
    <a href="profile_f.jsp"> <div id="i-fb" title="Profile" ></div> Profile </a>
    <a href="assignment_f.jsp"><div id="i-insta" title="Assignment"></div>Assignment</a>
    <a href="student_detail.jsp"><div id="i-detail" title="Student Detail"></div>Student Detail</a>
    
    <a href="chat.jsp"> <div id="i-lab" title="Chat"></div>Chat</a><br>  
    <a href="passwordf/changepassword1.jsp"><div id="i-xyz" title="Change Password"></div> Change password </a>
    <a href="invalidate1.jsp"><div id="i-imprint"  title="Logout"></div> Logout </a>
  </div>
  <div class="textbox">
    <div class="header">All Service Access Portal</div>
    <div class="content">
     
    
        
        
       Student Detail <br>
     <form action="student_detail1.jsp" method="post"  >
         Enter Student Enrollment <input  type="text" name="enrollment"> 
         <input type="submit" value="search">
     </form>
     <br><br>
     
     
          </div>
  </div>
</div>
  
    <script src="js/index.js"></script> 
         
    </body>
</html>
