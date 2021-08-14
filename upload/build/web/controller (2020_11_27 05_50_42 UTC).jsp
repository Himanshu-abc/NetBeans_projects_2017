<%-- 
    Document   : controller
    Created on : 16 Apr, 2017, 10:36:17 PM
    Author     : Dell
--%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.*"%>
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
            int factsize=1024*1024*1024;
            int filesize=1024*1024*1024;
        String reqType=request.getContentType();
        out.println(" "+reqType);
        if(reqType.indexOf("multipart/form-data")>=0)
        {
            try{
                DiskFileItemFactory df=new DiskFileItemFactory();
                df.setSizeThreshold(factsize);
                df.setRepository(new File("e:\\8k"));
                ServletFileUpload upload=new ServletFileUpload(df);
                upload.setSizeMax(factsize);
                List fileI=upload.parseRequest(request);
                ListIterator lit=fileI.listIterator();
                while(lit.hasNext())
                {
                 FileItem fi=(FileItem)lit.next() ;
                  String name=fi.getName();
                  f=new File("f:/upload/", name);
                    fi.getSize();
                  fi.write(f);
                  out.print("Successful"+f.getAbsolutePath());
                }
            }
            catch(Exception ex)
            {
              ex.printStackTrace();
            }
        }
        
        %>
    </body>
</html>
