<%-- 
    Document   : retrieve
    Created on : 20 May, 2017, 2:13:17 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Retrieve From Database Demo</title>
    </head>
    <body>
        <center>
		<h1>File Retrieve From Database Demo</h1>
		<form method="post" action="JdbcReadFile" enctype="multipart/form-data">
			<table border="0">
				<tr>
					<td>First Name: </td>
					<td><input type="text" name="firstName" size="50"/></td>
				</tr>
				<tr>
					<td>Last Name: </td>
					<td><input type="text" name="lastName" size="50"/></td>
                                </tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="Search">
					</td>
				</tr>
			</table>
		</form>
	</center>
       
    </body>
</html>
