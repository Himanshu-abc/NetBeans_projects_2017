
package pkg_common;

import java.sql.*;


class oracle_connection {

    static Connection dbconnector() {
// throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
     //Class.forName("oracle.jdbc.OracleDriver");
     Connection conn=null;
     try
     {
       Class.forName("oracle.jdbc.OracleDriver");  
       conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
     }
     catch (Exception e)
     {
       e.getLocalizedMessage();
       System.out.println("connection failed");
       e.printStackTrace();
       return null;
     }
    return conn;
    
}
}