<%-- 
    Document   : download FromDB
    Created on : 28 May, 2017, 12:50:45 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <form method="get" action="${pageContext.request.contextPath}/downloadAttachment"
        enctype="multipart/form-data">
        
        Select file to download:
        
        id:
        <br />
        <input type="text" name="id" size="100" value="" />
        <br />
        <br />
        <input type="submit" value="Download" />
    </form>
    
    </body>
</html>
