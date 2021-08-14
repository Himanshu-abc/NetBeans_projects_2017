<%-- 
    Document   : main1
    Created on : 24 Apr, 2017, 12:43:05 AM
    Author     : Dell
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
  String file2=request.getParameter("file1");
  try{
      Class.forName("oracle.jdbc.OracleDriver");
      Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "apocalypse");
      PreparedStatement ps=conn.prepareStatement("insert into storefile1 values (?)");
      ps.setString(1,file2);
      ps.executeUpdate();
      out.println("Successfully Uploaded");
      conn.close();
      ps.close();
      
  }
  catch(Exception e)
  {
    e.printStackTrace();
  }

%>