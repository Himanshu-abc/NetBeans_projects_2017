<%-- 
    Document   : assignment_f
    Created on : 26 May, 2017, 7:01:48 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
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
     
    
  
        
        
        
        
        
        
       <form method="post" action="${pageContext.request.contextPath}/uploadToDB1"  enctype="multipart/form-data">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">UPLOAD NEW ASSIGNMENTS</th>
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
        <br>
        
    View Students Completed Assignments <br>
    <form action="assignment_f2.jsp" method="post"  > 
    Enter Students Year <input  type="text" name="year"> 
    <input type="submit" value="search">
    </form>
    <br>
        
        
        
        
        
       
        
        <h4> Faculty, <%=session.getAttribute("username")%></h4>  
        <h4> Previously uploaded Assignments </h4>
       <%!
               Connection con;
               Statement stmt;
               ResultSet res;
               String impath;
           %> 
          <% 
           String username=(String)session.getAttribute("username");
          
          Class.forName("oracle.jdbc.OracleDriver");
          
          Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "apocalypse");

            Statement statement = connection.createStatement();  

            ResultSet resultset = statement.executeQuery("select id,file_name,department,student_year from assign_f where username = '" + username + "'") ; 

            if(!resultset.next()) {
                out.println("Sorry, No Assignments Uploaded Yet.");
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
       
       
   
       
       
      
       </div>
  </div>
</div>
  
    <script src="js/index.js"></script> 
    </body>
</html>
