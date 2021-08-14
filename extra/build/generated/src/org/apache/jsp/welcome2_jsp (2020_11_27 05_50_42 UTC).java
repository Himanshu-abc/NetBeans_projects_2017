package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class welcome2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Days+One'>\n");
      out.write("\n");
      out.write("      <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <div class=\"page\">\n");
      out.write("  <div class=\"nav\">\n");
      out.write("    <a href=\"profile_f.jsp\"> <div id=\"i-fb\" title=\"Profile\" ></div> Profile </a>\n");
      out.write("    <a href=\"assignment_f.jsp\"><div id=\"i-insta\" title=\"Assignment\"></div>Assignment</a>\n");
      out.write("    <a href=\"student_detail.jsp\"><div id=\"i-detail\" title=\"Student Detail\"></div>Student Detail</a>\n");
      out.write("    <a href=\"attendance.html\"> <div id=\"i-ask\" title=\"attendance\"></div> Attendance</a>\n");
      out.write("    <a href=\"chat.html\"> <div id=\"i-lab\" title=\"Chat\"></div>Chat</a><br>  \n");
      out.write("    <a href=\"passwordf/changepassword1.jsp\"><div id=\"i-xyz\" title=\"Change Password\"></div> Change password </a>\n");
      out.write("    <a href=\"invalidate1.jsp\"><div id=\"i-imprint\"  title=\"Logout\"></div> Logout </a>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"textbox\">\n");
      out.write("    <div class=\"header\">All Service Access Portal</div>\n");
      out.write("    <div class=\"content\">\n");
      out.write("      Welcome To ASAPortal... \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("  \n");
      out.write("    <script src=\"js/index.js\"></script>\n");
      out.write("\n");
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
