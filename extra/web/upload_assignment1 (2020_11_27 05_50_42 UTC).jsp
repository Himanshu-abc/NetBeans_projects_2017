<%-- 
    Document   : upload_assignment1
    Created on : 26 May, 2017, 9:05:13 PM
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
       
   

    
    
    
    
    
         <%!
               Connection con;
               Statement stmt;
               ResultSet res;
               String impath;
           %> 
          <% 
           //String username=(String)session.getAttribute("username");
           
          String user=request.getParameter("faculty");
          int year = Integer.parseInt(request.getParameter("year"));
          
          Class.forName("oracle.jdbc.OracleDriver");
          
          Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "apocalypse");

            Statement statement = connection.createStatement();  

            ResultSet resultset = statement.executeQuery("select id,file_name,department,student_year from assign_f where username ='"+ user +"' and student_year="+year+" ") ; 

            if(!resultset.next()) {
                out.println("Sorry, No Assignments Yet. ");
            } else {
             
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>File_name</TH> 
               <TH>Department</TH>
               <TH>Student year</TH>
              
           </TR>
           <TR>
               <TD> <%= resultset.getInt(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
                <TD> <%= resultset.getString(3) %> </TD>
                <TD> <%= resultset.getInt(4) %> </TD>
           </TR>
       </TABLE>
       <BR>
       <% 
              } 
       %>
       
       <br><br>
       
       
       
       
       Download Assignments   <br>
     
         <form action="${pageContext.request.contextPath}/downloadAttachment" method="get" enctype="multipart/form-data">
            
        Enter file id  to view and download:
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
