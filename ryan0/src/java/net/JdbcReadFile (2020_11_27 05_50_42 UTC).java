package net;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This program demonstrates how to read file data from database and save the
 * data into a file on disk.
 * @author www.codejava.net
 *
 */
@WebServlet("/JdbcReadFile")
@MultipartConfig(maxFileSize = 16177215)
public class JdbcReadFile extends HttpServlet{
	private static final int BUFFER_SIZE = 4096;
        
        protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
            
            PrintWriter out=response.getWriter();
                    
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
                out.println(firstName);
                out.println(lastName);
        
       
	//public static void main(String[] args) {
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "system";
		String password = "apocalypse";

		String filePath = "D:/Photos/tam.jpg";
                
                out.println("hey yupou");
                
                

		try {
                    
                       DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
			Connection conn = DriverManager.getConnection(url, user, password);

			String sql = "SELECT photo FROM contacts WHERE first_name=? AND last_name=?";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, "firstName");
			statement.setString(2, "lastName");
                        
                        
                        out.println("hey");
                        
                        

			ResultSet result = statement.executeQuery();
			if (result.next()) {
				Blob blob = result.getBlob("photo");
				InputStream inputStream = blob.getBinaryStream();
				OutputStream outputStream = new FileOutputStream(filePath);

				int bytesRead = -1;
				byte[] buffer = new byte[BUFFER_SIZE];
				while ((bytesRead = inputStream.read(buffer)) != -1) {
					outputStream.write(buffer, 0, bytesRead);
				}

				inputStream.close();
				outputStream.close();
				System.out.println("File saved");
                                
                              out.println("lasthey");  
			}
			conn.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}

}
