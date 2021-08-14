/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dell
 */
public class newservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String name,email;
    HttpSession session=req.getSession();
    name=(String) session.getAttribute("n");
    email=(String) session.getAttribute("e");
    PrintWriter out=resp.getWriter();
    out.println("Name is: "+ name);
    out.println("Email is: "+email);
    out.print(session.getId());
    
}
}