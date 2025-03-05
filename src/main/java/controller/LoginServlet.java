/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("rememberaccount");

        if (remember != null) {
            Cookie userCookie = new Cookie("username", username);
            Cookie passCookie = new Cookie("password", password);
            Cookie rememberCookie = new Cookie("remember", "true");

            rememberCookie.setMaxAge(60 * 60 * 24 * 7);
            userCookie.setMaxAge(60 * 60 * 24 * 7); 
            passCookie.setMaxAge(60 * 60 * 24 * 7);
            
            rememberCookie.setPath("/");
            userCookie.setPath("/");
            passCookie.setPath("/");
            
            response.addCookie(rememberCookie);
            response.addCookie(userCookie);
            response.addCookie(passCookie);
        }

        request.setAttribute("username", username);
        request.setAttribute("password", password);
        request.setAttribute("remember", remember);

        response.sendRedirect("displayName?username=" + username);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
