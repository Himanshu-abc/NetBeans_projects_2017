/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class setcookie extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    Cookie cook=new Cookie("name",req.getParameter("name"));
    Cookie cook1=new Cookie("email",req.getParameter("email"));
    resp.addCookie(cook);
    resp.addCookie(cook1);
    PrintWriter out=resp.getWriter();
    out.print("Cookie added to client browser");
    
}
    
    
}