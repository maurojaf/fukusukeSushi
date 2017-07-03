/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.administracion;

import classes.Orders;
import classes.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.ModeloOrders;

/**
 *
 * @author mauricioatenas
 */
@WebServlet(name = "BorrarOrden", urlPatterns = {"/borrarOrden"})
public class BorrarOrden extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
          request.getRequestDispatcher("/BorrarOrdenes.jsp").forward(request, response);  
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
        
        Users login = (Users) request.getSession().getAttribute("Autentificacion");
        
        if (login instanceof Users) {
            
        }
        else
        {
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/login");
            rd.forward(request, response);
        }
        
        
        String id = request.getParameter("order");
        int identify = Integer.parseInt(id);
        
        ModeloOrders ordenModel = new ModeloOrders();
        Orders orden = ordenModel.getOrden(identify);
        
        request.setAttribute("borrar", orden);   
        
        if (request.getParameterMap().containsKey("confirmar")) {
            String confirmar = "0";
            confirmar = request.getParameter("confirmar");
            
            boolean resultado = ordenModel.borrarOrden(orden);
        
        if (resultado) {
            request.setAttribute("success", "Se ah borrado correctamente la Orden");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listarOrdenes");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
            
            
            
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listarOrdenes");
            rd.forward(request, response);
        }
        
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
        
        String id = request.getParameter("order");
        int identify = Integer.parseInt(id);
        
        ModeloOrders ordenModel = new ModeloOrders();
        Orders order = ordenModel.getOrden(identify);
        
        boolean resultado = ordenModel.borrarOrden(order);
        
        if (resultado) {
            request.setAttribute("success", "Se ah borrado correctamente la Orden");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listarOrdenes");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
        request.setAttribute("orden", order);
        
        
        
        processRequest(request, response);
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
