package org;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.Attachment1; 
import org.ConnectionUtils1;

public class DownloadAttachmentServlet2 extends HttpServlet {

     private static final long serialVersionUID = 1L;
 
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       Connection conn = null;
       
       
       
       try {
           // Get Database Connection.
           // (See more in JDBC Tutorial).
           conn=ConnectionUtils.getMyConnection();
           // Class.forName("oracle.jdbc.driver.OracleDriver");  
           // conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","apocalypse");  
        
             int id = 0;
           try {
           id = Integer.parseInt(request.getParameter("id"));
           } catch (Exception e) {
 
           }
           Attachment attachment = getAttachmentFromDB(conn, id);
 
           if (attachment == null) {
               // No record found.
               response.getWriter().write("No data found");
               return;
           }
 
           // file1.zip, file2.zip
           String fileName = attachment.getFileName();
           System.out.println("File Name: " + fileName);
 
           // abc.txt => text/plain
           // abc.zip => application/zip
           // abc.pdf => application/pdf
           String contentType = this.getServletContext().getMimeType(fileName);
           System.out.println("Content Type: " + contentType);
 
           response.setHeader("Content-Type", contentType);
 
           response.setHeader("Content-Length", String.valueOf(attachment.getassignment().length()));
 
           response.setHeader("Content-Disposition", "inline; filename=\"" + attachment.getFileName() + "\"");
 
           // For big BLOB data.
           Blob fileData = (Blob) attachment.getassignment();
           InputStream is = fileData.getBinaryStream();
 
           byte[] bytes = new byte[1024];
           int bytesRead;
 
           while ((bytesRead = is.read(bytes)) != -1) {
               // Write image data to Response.
               response.getOutputStream().write(bytes, 0, bytesRead);
           }
           is.close();
 
       } catch (Exception e) {
           throw new ServletException(e);
       } finally {
           this.closeQuietly(conn);
       }
   }
 
   private Attachment getAttachmentFromDB(Connection conn, int id) throws SQLException {
       String sql = "Select a.Id,a.File_Name,a.username,a.department,a.student_year,a.assignment "//
               + " from assign_s a where a.id = ?";
       PreparedStatement pstm = conn.prepareStatement(sql);
       pstm.setLong(1, id);
       ResultSet rs = pstm.executeQuery();
       if (rs.next()) {
           String fileName = rs.getString("File_Name");
           String username = rs.getString("username");
           String department = rs.getString("department");
           int student_year = rs.getInt("student_year");
           Blob assignment = rs.getBlob("assignment");
           
           return new Attachment(id, fileName,username,department,student_year,assignment);
       }
       return null;
   }
 
   private void closeQuietly(Connection conn) {
       try {
           if (conn != null) {
               conn.close();
           }
       } catch (Exception e) {
       }
   }
 
}