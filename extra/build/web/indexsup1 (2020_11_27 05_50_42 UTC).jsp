<%-- 
    Document   : indexsup1
    Created on : 29 May, 2017, 9:54:16 AM
    Author     : Dell
--%>
<%@page import="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    
    String enr = request.getParameter("enrollment");
    String dept = request.getParameter("dept");
    int pmo = Integer.parseInt(request.getParameter("pmo"));
    int smo = Integer.parseInt(request.getParameter("smo"));
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("update minor_s set department='"+dept+"',parent_mobile_number="+pmo+",student_mobile_number="+smo+" where enrollment = '"+enr+"'  ");
    
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("indexab.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        //response.sendRedirect("index0.jsp");
        out.println("Error  <a href='indexab.jsp'>try again</a>");
    }
%> 
    </body>
</html>
