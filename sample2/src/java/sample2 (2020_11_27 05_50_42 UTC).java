/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class sample2 extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String name=req.getParameter("name");
    String email=req.getParameter("email");
    int number=Integer.parseInt(req.getParameter("num"));
    PrintWriter out=resp.getWriter();
    System.out.println("Your Name:"+name);
    System.out.println("Your Email:"+email);
    System.out.println("Your number:"+number);  
    req.setAttribute("extra","SamplePage");
    RequestDispatcher di=req.getRequestDispatcher("forwardeddata.jsp");
    di.include(req, resp);
    
    }
    
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
