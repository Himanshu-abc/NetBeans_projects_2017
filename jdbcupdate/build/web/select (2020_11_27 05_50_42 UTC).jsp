<%-- 
    Document   : select
    Created on : 10 Apr, 2017, 11:56:14 AM
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
                
            try{
                Class.forName("oracle.jdbc.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
                stmt=con.createStatement();
                ResultSet res=stmt.executeQuery("select * from student2");
                out.println("Successfully Selected");
                if(res.equals(null))
                    out.print("this is null");
                while(res.next())
                {
                    %>
                    <br>
                    <%
                 out.println("Inroll:"+res.getInt("inroll"));   
                 %>
                    <br>
                    <%
                 out.println("Name:"+res.getString("name"));
                 %>
                    <br>
                    <%
                 out.println("Address:"+res.getString("address"));
                 
                }
                
                con.close();
            }
            catch(Exception ex){
            ex.printStackTrace();
            }
            %>
    </body>
</html>
