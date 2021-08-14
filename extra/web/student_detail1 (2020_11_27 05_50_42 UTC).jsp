<%-- 
    Document   : student_detail1
    Created on : 28 May, 2017, 6:47:25 PM
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
     
    
        
        
        
         <%!
               Connection con;
               Statement stmt;
               ResultSet res;
               String impath;
           %> 
          <% 
           //String username=(String)session.getAttribute("username");
           
          String enrollment=request.getParameter("enrollment");
         // int year = Integer.parseInt(request.getParameter("year"));
          
          
          //  String username=(String)session.getAttribute("username");
          
          Class.forName("oracle.jdbc.OracleDriver");
          
          Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "apocalypse");

            Statement statement = connection.createStatement();  

            ResultSet resultset = statement.executeQuery("select username,enrollment,department,parent_mobile_number,student_mobile_number from minor_s where enrollment = '" + enrollment + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, could not find that publisher. " +
                "Please <A HREF='tryAgain.html'>try again</A>.");
            } else {
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>username</TH>
               <TH>Enrollment</TH>
               <TH>Department</TH>
               <TH>Parent mobile number</TH>
               <TH>Student mobile number</TH>
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getInt(4) %> </TD>
               <TD> <%= resultset.getInt(5) %> </TD>
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
      
       
       
          </div>
  </div>
</div>
  
    <script src="js/index.js"></script> 
         
      
    </body>
</html>
