<%-- 
    Document   : page
    Created on : 18 May, 2017, 9:27:57 PM
    Author     : Dell
--%>

<%@ page language="java" %>
<HTML>
<HEAD><TITLE>Display file upload form to the user</TITLE></HEAD>
<BODY> <FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp" METHOD=POST>
<br><br><br>
<center>
<table border="0" bgcolor=#ccFDDEE>
<tr>
<center>
<td colspan="2" align="center"><B>UPLOAD THE FILE</B><center></td>
</tr>
<tr>
<td colspan="2" align="center"> </td>
</tr>
<tr>
<td><b>Choose the file To Upload:</b></td>
<td><INPUT TYPE="file" NAME="file"></td>
</tr>
<tr>
<td colspan="2" align="center"> </td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="Send File"> </td>
</tr>
<table>
</center>
</FORM>
</BODY>
</HTML>