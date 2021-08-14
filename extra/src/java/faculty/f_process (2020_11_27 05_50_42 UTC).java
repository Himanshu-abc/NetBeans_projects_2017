
package faculty;

import java.io.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)	
public class f_process extends HttpServlet {

    // database connection settings
	private String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
	private String dbUser = "system";
	private String dbPass = "apocalypse";
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
                
                PrintWriter out=response.getWriter();
                
                HttpSession session=request.getSession(true);
                  String username=(String)session.getAttribute("username");
                  out.println(username);
                
		String Name = request.getParameter("Aname");
                out.println(Name);
                
                
		String department = request.getParameter("dept");
		int student_year = Integer.parseInt(request.getParameter("year"));
                
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("photo");
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		
		Connection conn = null;	// connection to the database
		String message = null;	// message will be sent back to client
		
		try {
			// connects to the database
                        //Class.forName("oracle.jdbc.OracleDriver");
			DriverManager.registerDriver(new oracle.jdbc.OracleDriver());
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
                        
                        

			// constructs SQL statement
			String sql = "INSERT INTO assignment_f (username,department,students_year,assignment,name) values (? ,?, ?, ?, ?) ";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, username);
			statement.setString(2, department);
                        statement.setInt(3, student_year);
                        statement.setString(5,Name);
			
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				//
                                statement.setBlob(4, inputStream);
                                out.println("Work is Done");
			}

			// sends the statement to the database server
			int row = statement.executeUpdate();
                        //out.println("till ok");
			if (row > 0) {
				message = "File uploaded and saved into database";
			}
                        
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} finally {
			if (conn != null) {
				// closes the database connection
				try {
					conn.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			// sets the message in request scope
			//request.setAttribute("Message.jsp", message);
			
			// forwards to the message page
			//getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
                        response.sendRedirect("assignment_f.jsp");
		}
	}
}             