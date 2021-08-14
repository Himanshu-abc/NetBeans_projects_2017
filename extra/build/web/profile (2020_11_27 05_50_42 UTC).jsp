<%-- 
    Document   : profile
    Created on : 16 May, 2017, 1:12:39 PM
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
        
        
        <%!
               Connection con;
               Statement stmt;
               ResultSet res;
               String impath;
           %>
           <%
                String username=(String)session.getAttribute("username");
                  try{
         String query="select pic from minor_s  where username='"+username+"' ";
         Class.forName("oracle.jdbc.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
         //out.print("Connection Established");
         stmt=con.createStatement();
         res=stmt.executeQuery(query);
         while(res.next())
         
         {
         impath=res.getString("pic");
         %>
          <div>
              <img src="images/<%=impath%>" height="150" width="150">
              <h6><%=impath%></h6>
          </div>
          <%
         }
         
         }
             catch(Exception ex){
                 ex.printStackTrace();
             }
          %>
         
        <h6><a href="pic/pic.jsp"> update pic </a>  </h6>
      
      <% 
          //  String username=(String)session.getAttribute("username");
          
          Class.forName("oracle.jdbc.OracleDriver");
          
          Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "apocalypse");

            Statement statement = connection.createStatement();  

            ResultSet resultset = statement.executeQuery("select username,enrollment,department,parent_mobile_number,student_mobile_number from minor_s where username = '" + username + "'") ; 

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
