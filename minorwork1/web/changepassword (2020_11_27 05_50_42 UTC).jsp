<%-- 
    Document   : changepassword
    Created on : 14 Apr, 2017, 11:14:02 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Change password in jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>
<h2 align="center"><strong>Please Change password </strong></h2>

<script language="javascript">
function fncSubmit()
{

if(document.changepassword.OldPassword.value == "")
{
alert('Please input old password');
document.changepassword.OldPassword.focus();
return false;
} 

if(document.changepassword.newpassword.value == "")
{
alert('Please input Password');
document.changepassword.newpassword.focus(); 
return false;
} 

if(document.changepassword.conpassword.value == "")
{
alert('Please input Confirm Password');
document.changepassword.conpassword.focus(); 
return false;
} 

if(document.changepassword.newpassword.value != document.changepassword.conpassword.value)
{
alert('Confirm Password Not Match');
document.changepassword.conpassword.focus(); 
return false;
} 

document.changepassword.submit();
}
</script>
<form name="changepassword" method="post" action="process.jsp" OnSubmit="return fncSubmit();">

<table border="1" align="center" bgcolor="#2B60DE">
    
    
<tr>
    <td>USERNAME</td>
    <td><input name="username" type="text" id="username"></td>
</tr>    
    

<tr>
<td>OLD PASSWORD</td>
<TD><input name="OldPassword" type="password" id="OLDpwd" size="20"></td>
</tr>
<tr>
<td>NewPassword</td>
<td><input name="newpassword" type="password" id="newpassword">
</td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input name="conpassword" type="password" id="conpassword">
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Save"></td>
</tr>



</table>
</form>
</body>
</html>