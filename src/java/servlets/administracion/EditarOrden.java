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
@WebServlet(name = "EditarOrden", urlPatterns = {"/editarOrden"})
public class EditarOrden extends HttpServlet {

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
            request.getRequestDispatcher("/EditarOrden.jsp").forward(request, response);
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
        
        request.setAttribute("order", orden); 
        
        
        
        
        
        
        
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
        
        String monto = request.getParameter("monto");
        String direccion  = request.getParameter("direccion");                        
        String telefono = request.getParameter("telefono");
        String correo = request.getParameter("correo");
        
        //int precioInt = Integer.parseInt(precio);
        
        order.setOrderAmount(Float.parseFloat(monto));
        order.setOrderShipAddress(direccion);
        order.setOrderPhone(telefono);
        order.setOrderEmail(correo);
        
        
        boolean resultado = ordenModel.updateOrden(order);
        
        if (resultado) {
            request.setAttribute("OK", "Se actualizó correctamente la orden n&uacute;mero: " + order.getOrderID());
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
