/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ProductDAO;
import entity.Account;
import entity.Cart;
import entity.Oderdetail;
import entity.Order;
import entity.Ship;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author thuy huong
 */
public class checkoutServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        HttpSession se = request.getSession();
        se.setAttribute("loginn", "checkout");
        se.removeAttribute("cart");
        se.setAttribute("size", 0);
        String name = request.getParameter("name");
        String user = request.getParameter("user");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        ProductDAO p = new ProductDAO();
        Cart cart = null;
        if (se.getAttribute("cart") != null) {
            cart = (Cart) se.getAttribute("cart");
        }
        Account acc = null;
        if (se.getAttribute("account") != null) {
            acc = (Account) se.getAttribute("account");
            ProductDAO d = new ProductDAO();
            se.removeAttribute("cart");
            se.setAttribute("size", 0);
            request.getRequestDispatcher("done.jsp").forward(request, response);
        } else {
            response.sendRedirect("Login.jsp");

        }

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
        String name = request.getParameter("name");
        String user = request.getParameter("user");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        ProductDAO p = new ProductDAO();
        try {
            p.ship(name, phone, address);
        } catch (SQLException ex) {
            Logger.getLogger(checkoutServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("done");
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
