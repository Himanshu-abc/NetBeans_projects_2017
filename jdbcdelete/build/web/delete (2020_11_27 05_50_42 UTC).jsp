<%-- 
    Document   : delete
    Created on : 9 Apr, 2017, 9:53:25 PM
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
