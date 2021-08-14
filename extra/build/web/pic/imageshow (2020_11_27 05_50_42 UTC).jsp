<%-- 
    Document   : imageshow
    Created on : 14 May, 2017, 4:12:47 PM
    Author     : Dell
--%>
<%@page session="true" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
         out.print("Connection Established");
         stmt=con.createStatement();
         res=stmt.executeQuery(query);
         while(res.next())
         
         {
         impath=res.getString("pic");
         %>
          <div>
              <img src="images/<%=impath%>" height="150" width="150">
              <h2><%=impath%></h2>
          </div>
          <%
         }
         
         }
             catch(Exception ex){
                 ex.printStackTrace();
             }
          %>
         
    </body>
</html>

