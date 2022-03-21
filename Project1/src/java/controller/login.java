/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDAO;
import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author thuy huong
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Cookie arr[] = request.getCookies();
        String user = null;
        String pass = null;
        if (arr != null) {
            for (Cookie c : arr) {
                if (c.getName().equals("userC")) {
                    user = c.getValue();
                }
                if (c.getName().equals("passC")) {
                    pass = c.getValue();
                }
                if (user != null && pass != null) {
                    break;
                }
            }
            if (user != null && pass != null) {
                Account acc = new ProductDAO().login(user, pass);
                if (acc != null) {
                    request.getSession().setAttribute("account", acc);
                    response.sendRedirect("first");
                    return;
                }
            }
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String re = request.getParameter("remember");
        ProductDAO p = new ProductDAO();
        Account a = p.login(user, pass);
        if (a == null) {
            request.setAttribute("mess", "Incorrect Username or Password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("account", a);

            Cookie u = new Cookie("userC", user);
            Cookie pw = new Cookie("passC", pass);
            u.setMaxAge(60 * 60 * 24);
            pw.setMaxAge(60 * 60 * 24);
            pw.setMaxAge(0);

            response.addCookie(u);
            response.addCookie(pw);

            String loginn = (String) session.getAttribute("loginn");
            response.sendRedirect(loginn);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
