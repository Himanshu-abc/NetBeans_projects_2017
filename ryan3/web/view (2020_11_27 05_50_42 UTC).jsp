<%-- 
    Document   : view
    Created on : 18 May, 2017, 9:31:26 PM
    Author     : Dell
--%>
<%@page import="java.sql.*,java.io.*"%>
<%
try{
    InputStream sImage;
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("SELECT result FROM xyz");
      if(rs.last()) {
      byte[] bytearray = new byte[1048576];
      int size=0;
      sImage = rs.getBinaryStream(1);
      response.reset();
      response.setContentType("image/jpeg");
      while((size=sImage.read(bytearray))!= -1 ){
      response.getOutputStream().write(bytearray,0,size);
   }
}
 con.close();
}     
catch(Exception ex){
out.println("error :"+ex);
}
%>


