/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class update1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       
        PrintWriter out=resp.getWriter();
        String name,address;
        int inroll;
        Connection con;
        Statement stmt;
        
        name=req.getParameter("name");
        inroll=Integer.parseInt(req.getParameter("inroll"));
        address=req.getParameter("address");
        try {
                
                String query=("update student2 set inroll="+inroll+",name='"+name+"',address='"+address+"' where inroll="+inroll+"");
                Class.forName("oracle.jdbc.OracleDriver");
                con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
                stmt=con.createStatement();
                stmt.executeUpdate(query);
                out.println("Data Successfully Inserted");
                 con.close();
            }
               catch(Exception ex){
                  System.out.print(ex);
               }
            
            out.println("\nUpdation Success full");
            
            }
        
    
        
    }


