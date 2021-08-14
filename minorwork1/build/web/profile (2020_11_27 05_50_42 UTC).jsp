<%-- 
    Document   : profile
    Created on : 18 Apr, 2017, 10:10:43 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%!
        String str;
        Connection con;
        Statement stmt;
        File file;
        int maxSize=5000*80;
        int maxFactSize=5000*80;
        String path="C:/Users/Dell/Documents/NetBeansProjects/minorwork1/web/images";
        %>
        <%
      String type=request.getContentType();
      out.println(type);
      if(type.indexOf("multipart/form-data")>=0)
      {
      out.print("it's a multipart data!");  
      DiskFileItemFactory diskFact=new DiskFileItemFactory();
      diskFact.setSizeThreshold(maxFactSize);
      diskFact.setRepository(new File("e:\\8k"));
      ServletFileUpload upload=new ServletFileUpload(diskFact);
      upload.setSizeMax(maxSize);
      List lis=upload.parseRequest(request);
      Iterator itr=lis.iterator();
      while(itr.hasNext())
      { 
      FileItem item=(FileItem)itr.next();
        %> <br><%
      out.println(item.isFormField());
      if(!item.isFormField())
      {
      str=item.getName();
      str=str.substring(0, 1)+"profile"+ str.substring(str.indexOf("."));
      out.println(str);
      file=new File(path,str);
      item.write(file);
      out.println("Uploaded................!");
      
      }
      
      }
      }
        %>
         <%
             try{
         String query="insert into profile values('"+ str +"')";
         Class.forName("oracle.jdbc.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
         stmt=con.createStatement();
         stmt.executeUpdate(query);
         out.println("File Path Stored................");
         
             }
             catch(Exception ex){
             ex.printStackTrace();
             }%>
             <%--
             finally{
             response.sendRedirect("welcome.jsp");   
             }
             --%>
             <a href="other.jsp"> View Image </a>
             
             
    </body>
</html>
