<%-- 
    Document   : insert
    Created on : 10 Apr, 2017, 9:25:28 AM
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
        %>
        <%
            String address,name;
            int inroll;
            name=request.getParameter("name");
            address=request.getParameter("address");
            inroll=Integer.parseInt(request.getParameter("inroll"));
            try {
                
                String query="insert into student2 values("+inroll+",'"+name+"','"+address+"')";
                Class.forName("oracle.jdbc.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
                stmt=con.createStatement();
                stmt.executeUpdate(query);
                out.println("Data Successfully Inserted");
                
            }
               catch(Exception ex){
                   System.out.println(ex);
               }
            finally{
                con.close();
            }
            %>
    </body>
</html>
