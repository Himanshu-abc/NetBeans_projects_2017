<%-- 
    Document   : processchangePWD
    Created on : 14 Apr, 2017, 10:20:00 AM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String OldPassword = request.getParameter("OldPassword");
String Newpass = request.getParameter("newpassword");
String conpass = request.getParameter("conpassword");


Connection con = null;
Statement st = null;
String pass = "";
int id = 0;
try {
Class.forName("oracle.jdbc.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:XE";
con = DriverManager.getConnection(url, "system", "apocalypse");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from changepassword where oldpassword= '"+ OldPassword + "'");
if (rs.next()) { 
pass = rs.getString("oldpassword");
} 
if(Newpass.equals(conpass))
{
if (pass.equals(OldPassword)) {
st = con.createStatement();
int i = st.executeUpdate("update changepassword set oldpassword='"+ Newpass + "'");
out.println("Password changed successfully");
st.close();
con.close();
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