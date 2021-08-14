<%-- 
    Document   : process
    Created on : 23 Apr, 2017, 5:48:39 PM
    Author     : Dell
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>

<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");
String username=request.getParameter("username");

Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("oracle.jdbc.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:XE";
con = DriverManager.getConnection(url, "system", "apocalypse");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from minor_s where password= '"+ OldPassword + "' ");
if (rs.next()) { 
pass = rs.getString("password");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update minor_s set password='"+ Newpass + "' where username='"+ username+"' ");
out.println("Password changed successfully");
st.close();
con.close();
%> <br>
Click here to explore portal<a href="welcome.jsp"> Click here </a>
<%
} else {
out.println("Old Password doesn't match");
}
/*}else{
out.println("new password and confirm new password is not matching");
}*/
}
} catch (Exception e) {
out.println(e);
}
%>