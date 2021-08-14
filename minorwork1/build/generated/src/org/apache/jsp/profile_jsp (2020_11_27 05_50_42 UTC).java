package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import org.apache.commons.fileupload.FileItem;
import java.util.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import java.io.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        String str;
        Connection con;
        Statement stmt;
        File file;
        int maxSize=5000*80;
        int maxFactSize=5000*80;
        String path="C:/Users/Dell/Documents/NetBeansProjects/minorwork1/web/images";
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");
      out.write("\n");
      out.write("        ");

      String type=request.getContentType();
      out.println(type);
      if(type.indexOf("multipart/form-data")>=0)
      {
      out.print("it's a multipart data!");  
      DiskFileItemFactory diskFact=new DiskFileItemFactory();
      diskFact.setSizeThreshold(maxFactSize);
      diskFact.setRepository(new File("e:\\8k"));
      ServletFileUpload upload=new ServletFileUpload(diskFact);
      upload.setSizeMax(maxSize);
      List lis=upload.parseRequest(request);
      Iterator itr=lis.iterator();
      while(itr.hasNext())
      { 
      FileItem item=(FileItem)itr.next();
        
      out.write(" <br>");

      out.println(item.isFormField());
      if(!item.isFormField())
      {
      str=item.getName();
      str=str.substring(0, 1)+"profile"+ str.substring(str.indexOf("."));
      out.println(str);
      file=new File(path,str);
      item.write(file);
      out.println("Uploaded................!");
      
      }
      
      }
      }
        
      out.write("\n");
      out.write("         ");

             try{
         String query="insert into profile values('"+ str +"')";
         Class.forName("oracle.jdbc.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","apocalypse");
         stmt=con.createStatement();
         stmt.executeUpdate(query);
         out.println("File Path Stored................");
         
             }
             catch(Exception ex){
             ex.printStackTrace();
             }
             finally{
             response.sendRedirect("welcome.jsp");   
             }
             
      out.write("\n");
      out.write("              \n");
      out.write("             \n");
      out.write("             \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
