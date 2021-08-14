<%-- 
    Document   : registeration1
    Created on : 26 May, 2017, 2:49:34 PM
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
          <%
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    //String enr = request.getParameter("enrollment");
    String dept = request.getParameter("dept");
   // int pmo = Integer.parseInt(request.getParameter("pmo"));
    //int smo = Integer.parseInt(request.getParameter("smo"));
    int mo = Integer.parseInt(request.getParameter("mo"));
    
    
    
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into minor_f (username,password,department,mobile_number) values ('" + user + "','" + pwd + "','"+dept+"',"+mo+")");
    
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome2.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        //response.sendRedirect("index0.jsp");
        out.println("Error  <a href='indexab.jsp'>try again</a>");
    }
%> 
    </body>
</html>
