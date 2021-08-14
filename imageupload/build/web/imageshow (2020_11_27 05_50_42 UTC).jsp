<%-- 
    Document   : imageshow
    Created on : 17 Apr, 2017, 1:34:45 AM
    Author     : Dell
--%>

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
                  try{
         String query="select * from imgpath";
         Class.forName("oracle.jdbc.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
         out.print("Connection Established");
         stmt=con.createStatement();
         res=stmt.executeQuery(query);
         while(res.next())
         
         {
         impath=res.getString("impath");
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
