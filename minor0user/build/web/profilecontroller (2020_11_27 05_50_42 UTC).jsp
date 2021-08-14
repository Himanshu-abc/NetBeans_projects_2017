<%-- 
    Document   : profilecontroller
    Created on : 23 Apr, 2017, 5:57:16 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
 
try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","apocalypse");  
              
PreparedStatement ps=con.prepareStatement("insert into imgtable values(?,?)");  
ps.setString(1,"sonoo");  
  
FileInputStream fin=new FileInputStream("d:\\g.jpg");  
ps.setBinaryStream(2,fin,fin.available());  
int i=ps.executeUpdate();  
System.out.println(i+" records affected");  
          
con.close();  
}catch (Exception e) {e.printStackTrace();}  
}  
}  
    %>