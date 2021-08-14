/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(urlPatterns = {"/connection"})
public class connection extends HttpServlet {

   
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String name,address;
        int inroll;
        name=req.getParameter("name");
        inroll=Integer.parseInt(req.getParameter("inroll"));
        address=req.getParameter("address");
        out.print(inroll+"name"+name+"Address"+address);
    }
  
   
}
