<%-- 
    Document   : assignment_f2
    Created on : 29 May, 2017, 1:50:14 AM
    Author     : Dell
--%>
<%@ page import="java.sql.*" %>
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
     
    
        Download Completed Assignments   <br><br>
        
          <%!
               Connection con;
               Statement stmt;
               ResultSet res;
               String impath;
           %> 
          <% 
              
              
          // String username=(String)session.getAttribute("username");
        
          int year = Integer.parseInt(request.getParameter("year"));
          
          Class.forName("oracle.jdbc.OracleDriver");
          
          Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "apocalypse");

            Statement statement = connection.createStatement();  

            ResultSet resultset = statement.executeQuery("select id,file_name,username,department,student_year from assign_s where student_year="+year+" ") ; 

            if(!resultset.next()) {
                out.println("Sorry, No Assignments ");
            } else {
        %>
        <br>
        <TABLE BORDER="1">
            <TR>
                
               <TH>ID</TH>
               <TH>File_name</TH> 
               <TH>Username</TH> 
               <TH>Department</TH>
               <TH>Student year</TH>
              
           </TR>
           <TR>
               <TD> <%= resultset.getInt(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
                <TD> <%= resultset.getString(4) %> </TD>
                <TD> <%= resultset.getInt(5) %> </TD>
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
       
      <!-- Download Completed Assignments   <br>  -->
     
         <form action="${pageContext.request.contextPath}/downloadAttachment2" method="get" enctype="multipart/form-data">
            
             <br> Enter id to view and download:
        <br />
        id:<input type="text" name="id" size="100" value="" />
        <br />
        <br />
        <input type="submit" value="Download" />
        </form>
         
         
         
          </div>
  </div>
</div>
  
    <script src="js/index.js"></script> 
         
         
         
       
    </body>
</html>
