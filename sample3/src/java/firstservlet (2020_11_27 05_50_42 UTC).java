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
public class firstservlet extends HttpServlet {
 
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   String n,p;
   n=req.getParameter("user");
   p=req.getParameter("pass");
   PrintWriter out=resp.getWriter();
   out.println(n+" \t "+p);
   if(n.equals("himanshu")&&p.equals("pass")){
       
       RequestDispatcher rd=req.getRequestDispatcher("sucess");
       rd.include(req,resp);
   }
   
   else{
       RequestDispatcher rd=req.getRequestDispatcher("wrong");
       rd.forward(req, resp);
   }
       
   }
   





       }
    




