<%-- 
    Document   : insert
    Created on : 9 Apr, 2017, 12:17:28 AM
    Author     : Dell
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Connection"%>
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
     Statement stm;
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
                stm=con.createStatement();
                stm.executeUpdate(query);
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
