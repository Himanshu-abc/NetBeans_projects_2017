<%-- 
    Document   : delete
    Created on : 10 Apr, 2017, 8:53:06 AM
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
            Statement stmt;
            Connection con;
            %>
            <%
                int inroll=Integer.parseInt(request.getParameter("inroll"));
            try{
                Class.forName("oracle.jdbc.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
                stmt=con.createStatement();
                stmt.executeUpdate("delete from student2 where inroll="+inroll+"");
                out.println("Successfully Deleted");
                
                con.close();
            }
            catch(Exception ex){
            ex.printStackTrace();
            }
            %>
    </body>
</html>
