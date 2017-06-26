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
@WebServlet(name = "editarProductoServlet", urlPatterns = {"/editar"})
public class EditarProductoServlet extends HttpServlet {

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
        
        request.getRequestDispatcher("/editarProducto.jsp").forward(request, response);
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
        
        request.setAttribute("producto", producto);
        
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
        
        String nombre = request.getParameter("name");
        String precio  = request.getParameter("price");                        
        String descripcion = request.getParameter("longDesc");
        String stock = request.getParameter("stock");
        String imagen = request.getParameter("image");
        
        //int precioInt = Integer.parseInt(precio);
        
        prod.setProductName(nombre);
        prod.setProductPrice(Integer.parseInt(precio));
        prod.setProductLongDesc(descripcion);
        prod.setProductStock(Integer.parseInt(stock));
        prod.setProductImage(imagen);
        
        boolean resultado = productoModel.update(prod);
        
        if (resultado) {
            request.setAttribute("success", "Se actualizó correctamente el producto: " + prod.getProductName());
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
