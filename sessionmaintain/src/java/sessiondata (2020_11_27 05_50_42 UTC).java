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
public class sessiondata extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getParameter("name");
    req.getParameter("email");
    PrintWriter out=resp.getWriter();
    HttpSession session=req.getSession();
    session.setAttribute("n",req.getParameter("name") );
    session.setAttribute("e",req.getParameter("email") );
    out.println("Data is set in session");
}
}