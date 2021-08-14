<%-- 
    Document   : update
    Created on : 10 Apr, 2017, 9:21:59 AM
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
            %>
        <%
            int inroll=Integer.parseInt(request.getParameter("inroll"));
            Class.forName("oracle.jdbc.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
            stmt=con.createStatement();
            res=stmt.executeQuery("select * from student2 where inroll='"+inroll+"' ");
            int j=0;
            while(res.next())
            {
            j++;
             %>
            <form name="frm" action="update1" method="get">
             Name<input type="text" name="name" value="<%=res.getString(2)%>"><br>
             Inroll<input type="text" name="inroll" value="<%=res.getInt(1)%>"><br>
             Address<input type="text"  name="address" value="<%=res.getString(3)%>"><br>
             <input type="submit" value="update">
             </form> 
            <%
                }
            out.print("total res"+j);
            %>
            
    </body>
</html>
