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
public class getcookie extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     Cookie ck[]=req.getCookies();
     PrintWriter out=resp.getWriter();
     out.println(ck[0].getName()+" "+ck[0].getValue().toString());
     out.println(ck[1].getName()+" "+ck[1].getValue().toString());
     
     
    
        
        
        
}
}