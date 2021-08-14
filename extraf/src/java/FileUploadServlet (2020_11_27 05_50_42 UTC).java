

import java.io.*;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//@MultipartConfig(maxFileSize = 1699999999)


public class FileUploadServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        try (PrintWriter out = response.getWriter()) {
            
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        processRequest(request, response);
       out.println("at this page");
        
        try {
           
            String username=request.getParameter("username");
            String namef=request.getParameter("namef");
            Part filePart = request.getPart("picture");
            System.out.println("hello"+" "+namef+" "+filePart);
            InputStream inputstream = null;
            if (filePart != null)
            { long fileSize = filePart.getSize();  // it will give size
               String fileContent = filePart.getContentType();  // this will give content type
               inputstream = filePart.getInputStream(); }            
            
             Class.forName("oracle.jdbc.OracleDriver");
             Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
             PreparedStatement st = con.prepareStatement("Insert into minor_s_assignments (name,assignment) values (?,?) where username='"+username+"' ");
             
    
            st.setString(1, namef);
            st.setBlob(2, inputstream);
            
            int returcode = st.executeUpdate();
            
            if (returcode == 0) {
                request.setAttribute("Message","error inserting file");
                getServletContext().getRequestDispatcher("/failure.jsp").forward(request, response);
                
            }
            else
            {
                request.setAttribute("Message","Your record inserted successfully");
                getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
            }
            
            
            
            
            
        }
        
         catch(Exception ex) {
             ex.printStackTrace();
         }        
        
        
    }
}
