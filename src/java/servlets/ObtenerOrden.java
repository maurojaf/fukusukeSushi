/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.Articulo;
import classes.Cliente;
import classes.Orders;
import classes.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "ObtenerOrden", urlPatterns = {"/obtenerOrden"})
public class ObtenerOrden extends HttpServlet {

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
        
        response.sendRedirect("shop-cart.jsp");
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
        
        ArrayList<Articulo> articulos = (ArrayList<Articulo>) request.getSession().getAttribute("carrito");
        Usuario usuario = (Usuario) request.getSession().getAttribute("Autentificacion");
        
        Orders orden = new Orders();
        orden.setDetalles(articulos);
        orden.setOrderIDCliente(usuario.getId());
        orden.setOrderEmail(usuario.getCorreo());
        orden.setOrderPhone(usuario.getTelefono());
        orden.setOrderShipAddress(usuario.getDireccion());
        
        ModeloOrders modeloOrder = new ModeloOrders();
        boolean resultado = modeloOrder.guardarOrden(orden);
        
        if(resultado){
            request.getSession().removeAttribute("carrito");
            request.setAttribute("success", "Gracias por su compra.");
        }else{
            request.setAttribute("error", "No se ha podido procesar su compra. Intente nuevamente.");
        }
            //response.sendRedirect("shop-chekout.jsp");    
        request.getRequestDispatcher("/index.jsp").forward(request, response);
//        ServletContext context = getServletContext();
//        RequestDispatcher rd = context.getRequestDispatcher("/mostrarBoleta'");
//        rd.forward(request, response);
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
