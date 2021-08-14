<%-- 
    Document   : controller
    Created on : 10 Apr, 2017, 5:01:17 PM
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
            String name,pass;
            int id,number;   
        %>
        <%
            int h;
            id=Integer.parseInt(request.getParameter("id"));
            
            name=request.getParameter("name");
            pass=request.getParameter("pass");
            
            number=Integer.parseInt(request.getParameter("number"));
            
            con=helping.connection_oracle.connectTo();
            PreparedStatement stmt=con.prepareStatement("insert into emp22 values(?,?,?,?)");
            stmt.setInt(1,id);
            stmt.setString(2,name);
            stmt.setString(3,pass);
            stmt.setInt(4,number);
            
            h=stmt.executeUpdate();
            if(h>0)
            {
              out.print("You Have Inserted "+h+" row");
            }
            stmt.close();
            con.close();
        %>
    </body>
</html>
