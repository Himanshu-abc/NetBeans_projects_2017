/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helping;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class connection_oracle {
    static Connection con;
    public static Connection connectTo(){
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
            if(con!=null){
                System.out.println("Connection Established.......");
            }
          
        } catch (Exception ex) {
            System.out.println("helping.connection_oracle.connectTo()"+ex);
        }
       return con; 
    }
    public static void main(String[] args) {
        connection_oracle.connectTo();
    }
}
