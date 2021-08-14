<%-- 
    Document   : controller
    Created on : 7 Apr, 2017, 8:28:46 PM
    Author     : Dell
--%>


<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            File f;
            int factSize=1024*1024*1024;
            int fileSize=1024*1024*1024;
            String reqType=request.getContentType();
            out.println(" "+reqType);
            if (reqType.indexOf("multipart/form-data")>=0)
            {
                try{
                    DiskFileItemFactory df=new DiskFileItemFactory();
                    df.setSizeThreshold(factSize);
                    df.setRepository(new File("c:\\temp"));
                    ServletFileUpload upload=new ServletFileUpload(df);
                    upload.setSizeMax(factSize);
                    List fileI=upload.parseRequest(request);
                    ListIterator lit=fileI.listIterator();
                    while(lit.hasNext())
                    {
                        FileItem fi=(FileItem)lit.next();
                        String name=fi.getName();
                        f=new File("E:/upload/",name);
                        fi.getSize();
                        fi.write(f);
                        out.print("Successful:"+f.getAbsolutePath());
                        
                        } 
                    }
                catch(Exception ex){
             ex.printStackTrace();
                    
            }
            } 
          %>
       
    </body>
</html>
