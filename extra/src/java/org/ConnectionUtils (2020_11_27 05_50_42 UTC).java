
package org;

/**
 *
 * @author Dell
 */

import java.sql.*;

public class ConnectionUtils {
    
    public static Connection getMyConnection() throws SQLException,ClassNotFoundException {
        
        String hostName="localhost";
        String sid="XE";
        String userName="system";
        String password="apocalypse";
        
       return getMyConnection(hostName,sid,userName,password);
    }
    
    public static Connection getMyConnection(String hostName,String sid,String userName,String password) throws SQLException,ClassNotFoundException {
        
     Class.forName("oracle.jdbc.driver.OracleDriver"); 
     
     String connectionURL = "jdbc:oracle:thin:@" +hostName+ ":1521:" +sid; 
     
     Connection conn=DriverManager.getConnection(connectionURL,userName,password);
     
     return conn;
     
    } 
            
 
}
