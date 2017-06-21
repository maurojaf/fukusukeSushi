/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.administracion;

import classes.Products;
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
import models.ModeloProducts;

/**
 *
 * @author mauricioatenas
 */
@WebServlet(name = "BorrarProductoServlet", urlPatterns = {"/borrar"})
public class BorrarProductoServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            request.getRequestDispatcher("/borrarProducto.jsp").forward(request, response);
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
        
        
        
        
        String id = request.getParameter("prod");
        int identify = Integer.parseInt(id);
        
        ModeloProducts productoModel = new ModeloProducts();
        Products producto = productoModel.getAllProductos(identify);
        
        request.setAttribute("borrar", producto);   
        
        if (request.getParameterMap().containsKey("confirmar")) {
            String confirmar = "0";
            confirmar = request.getParameter("confirmar");
            
            boolean resultado = productoModel.borrar(producto);
        
        if (resultado) {
            request.setAttribute("success", "Se ah borrado correctamente el producto");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/productos");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
            
            
            
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/productos");
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
        String id = request.getParameter("prod");
        int identify = Integer.parseInt(id);
        
        ModeloProducts productoModel = new ModeloProducts();
        Products prod = productoModel.getAllProductos(identify);
        
        boolean resultado = productoModel.borrar(prod);
        
        if (resultado) {
            request.setAttribute("success", "Se ah borrado correctamente el producto");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/productos");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
        request.setAttribute("producto", prod);
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
