<%-- 
    Document   : changepassword
    Created on : 23 Apr, 2017, 5:46:19 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
        
         <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Days+One'>

      <link rel="stylesheet" href="../css/style.css">
        
    </head>
    <body>
        
        
        
         <div class="page">
  <div class="nav">
    <a href="../welcome1.jsp"><div id="i-mail" title="Home"></div> Home </a>
    <a href="../profile.jsp"> <div id="i-fb" title="Profile" ></div> Profile </a>
    <a href="../upload_assignment.jsp"><div id="i-insta" title="Upload Assignment"></div> Upload Assignment</a>
   
    <a href="../chats.jsp"> <div id="i-lab" title="Chat"></div> Chat </a>
    <a href="../password/changepassword.jsp"><div id="i-changepass" title="Change Password"></div> Change password </a>
    <a href="../invalidate.jsp"><div id="i-imprint"  title="Logout"></div> Logout </a>
  </div>
  <div class="textbox">
    <div class="header">All Service Access Portal</div>
    <div class="content">
        
        
        
        
        
        
        
        
        
       <h2 align="center"><strong> Change password </strong></h2>

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




          </div>
  </div>
</div>
  
    <script src="js/index.js"></script>



    </body>
</html>
