package pkg_common;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Loader_export_servlet
 */
//@WebServlet("/Loader_export_servlet")
@WebServlet( name = "Loader_export_servlet", urlPatterns = { "/Loader_export_servlet" } )
public class Loader_export_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loader_export_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String export1  = request.getParameter("btnExport"); // name of Button which was clicked.
		String export_te  = request.getParameter("btnExport_test_e");
		
		if (export1 !=null && !export1.isEmpty()) {			
			String file_name = request.getParameter("filename");
			System.out.println("Export filename: " +file_name);
			String path1 = "C:/files/";
			Export_bean bn = new Export_bean();
			bn.setfile_name(file_name);
			bn.setValid(false);
			bn = Export_DAO.export_to_xls_zip(bn, path1, "loader_export");			
			if(bn.isValid()){
				String DOWNLOAD_DIRECTORY = bn.getZipPath();
				//String DOWNLOAD_DIRECTORY ="C:\\files\\loader_validation_2017.02.21.16.32.20.zip";
			//System.out.println(DOWNLOAD_DIRECTORY);
				String fileType = "application/ZIP";
		         // Find this file id in database to get file name, and file type

		         // You must tell the browser the file type you are going to send
		         // for example application/pdf, text/plain, text/html, image/jpg
		         response.setContentType(fileType);
		      // Make sure to show the download dialog
		         response.setHeader("Content-disposition","attachment; filename=data.zip");

		         // Assume file name is retrieved from database
		         // For example D:\\file\\test.pdf

		         File my_file = new File(DOWNLOAD_DIRECTORY);

		         // This should send the file to browser
		         OutputStream out = response.getOutputStream();
		         FileInputStream in = new FileInputStream(my_file);
		         byte[] buffer = new byte[4096];
		         int length;
		         while ((length = in.read(buffer)) > 0){
		            out.write(buffer, 0, length);
		         }
		         in.close();
		         out.flush();
					
			}
			
			
		}
		else if (export_te !=null && !export_te.isEmpty()) {			
			String file_name = request.getParameter("filename");
			System.out.println("Export filename: " +file_name);
			String path1 = "C:/files/test_equipment/";
			Export_bean bn = new Export_bean();
			bn.setfile_name(file_name);
			bn.setValid(false);
			
			bn = Export_DAO.export_to_xls_zip(bn, path1,"loader_te");
			if(bn.isValid()){
				String DOWNLOAD_DIRECTORY = bn.getZipPath();
				//String DOWNLOAD_DIRECTORY ="C:\\files\\loader_validation_2017.02.21.16.32.20.zip";
			//System.out.println(DOWNLOAD_DIRECTORY);
				String fileType = "application/ZIP";
		         // Find this file id in database to get file name, and file type

		         // You must tell the browser the file type you are going to send
		         // for example application/pdf, text/plain, text/html, image/jpg
		         response.setContentType(fileType);
		      // Make sure to show the download dialog
		         response.setHeader("Content-disposition","attachment; filename=data.zip");

		         // Assume file name is retrieved from database
		         // For example D:\\file\\test.pdf

		         File my_file = new File(DOWNLOAD_DIRECTORY);

		         // This should send the file to browser
		         OutputStream out = response.getOutputStream();
		         FileInputStream in = new FileInputStream(my_file);
		         byte[] buffer = new byte[4096];
		         int length;
		         while ((length = in.read(buffer)) > 0){
		            out.write(buffer, 0, length);
		         }
		         in.close();
		         out.flush();
					
			}
			
			
		}
		
		
	}

}
