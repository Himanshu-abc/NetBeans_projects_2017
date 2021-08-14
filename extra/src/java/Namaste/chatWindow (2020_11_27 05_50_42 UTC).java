/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Namaste;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author amansehgal
 */
@WebServlet(name = "chatWindow", urlPatterns = {"/chatWindow"})
public class chatWindow extends HttpServlet {
    
    
String username,tempName;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
            
         String message = request.getParameter("txtMsg");  //Extract Message
         String username = session.getAttribute("username").toString(); //Extract Username
       
         
         //Display Chat Room
         out.println("<html>  <head> <body bgcolor=\"#7CFC00\"> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"> <title>Chat Room</title>  </head>");
         out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"> <center>");
         out.println("<h2>Hi ");
         out.println(username);
         out.println("<br> Welcome to ASAP Chat ");
         out.println("</h2><br><hr>");
         out.println("  <body>");
         out.println("      <form name=\"chatWindow\" action=\"chatWindow\">");
         out.println("Message: <input type=\"text\" name=\"txtMsg\" value=\"\" /><input type=\"submit\" value=\"Send\" name=\"cmdSend\"/>");
         out.println("<br><br> <a href=\"chatWindow\">Refresh Chat Room</a>");
         out.println("<br>  <br>");
         out.println("Messages in Chat Box:");
         out.println("<br><br>");
         out.println("<textarea  readonly=\"readonly\"   name=\"txtMessage\" rows=\"20\" cols=\"60\">");

         //If eneterd message != null then insert into database
        if(request.getParameter("txtMsg")!=null)
         {

           try
           {
                Class.forName("oracle.jdbc.OracleDriver");
                java.sql.Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
              
                Statement st=con.createStatement();
             
                
                String sql = "insert into hello_message_f values ('"+username+"','"+message+"')";
                st.executeUpdate(sql);

                st.execute("commit");
                
           }
           catch(Exception ex1)
           {
                        System.err.println(ex1.getMessage());
                        String messages = "No";
                        out.println(messages);
           }
         }
         // Retrieve all messages from database
        
         try
         {
            Class.forName("oracle.jdbc.OracleDriver");
            java.sql.Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
              
            Statement st=con.createStatement();
                 
            ResultSet rs=st.executeQuery("select *from hello_message_f");
            
            // Print all retrieved messages
            while(rs.next())
            {
                String messages =rs.getString(1)+ " : " + rs.getString(2);
                
                out.println(messages);
            }
               
            con.close();
         }
         catch(Exception ex1) 
         {
            System.err.println(ex1.getMessage());
         }
         
         out.println("</textarea>");
         out.println("<hr>");
         out.println("</form>");
         out.println("</body>");
         out.println("</html>");
        }
    

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //Session 
        
        session = request.getSession();
        
        if(username!=null)
        {
            tempName=username;
        }

        processRequest(request, response);
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
 HttpSession session;
}
