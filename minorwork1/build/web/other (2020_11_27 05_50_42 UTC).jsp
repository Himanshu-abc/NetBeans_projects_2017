<%-- 
    Document   : other
    Created on : 18 Apr, 2017, 3:51:26 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
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
               String pic;
           %>
           <%
                  try{
         String query="select * from profile";
         Class.forName("oracle.jdbc.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
         
         stmt=con.createStatement();
         res=stmt.executeQuery(query);
         while(res.next())
         {
         pic=res.getString("pic");
         %>
          <div>
              <img src="images/<%=pic%>" height="150" width="150">
              <h2><%=pic%></h2>
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
