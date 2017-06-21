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
import java.util.Date;
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
@WebServlet(name = "addProductoServlet", urlPatterns = {"/agregar"})
public class AgregarProductoServlet extends HttpServlet {

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
        
        request.getRequestDispatcher("/agregarProducto.jsp").forward(request, response);
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
        
        if (id != null) {
            int identify = Integer.parseInt(id);
        
            ModeloProducts productoModel = new ModeloProducts();
            Products producto = productoModel.getAllProductos(identify);
        
            request.setAttribute("producto", producto);
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
        
        //String id = request.getParameter("");
        String nombre = request.getParameter("name");
        String precio  = request.getParameter("price");                        
        String descripcion = request.getParameter("longDesc");
        String stock = request.getParameter("stock");
        String imagen = request.getParameter("image");
        //Float.parseFloat(precio);
        //int precioInt = Integer.parseInt(precio);        
        Products prod = new Products();
        
        //prod.setProductID();
        prod.setProductName(nombre);
        prod.setProductPrice(Float.parseFloat(precio));
        prod.setProductLongDesc(descripcion);
        prod.setProductStock(Float.parseFloat(stock));
        prod.setProductImage(imagen);
        
        ModeloProducts productoModel = new ModeloProducts();
        boolean resultado = productoModel.guardarProductos(prod);
        
        if (resultado) {
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/productos");
            rd.forward(request, response);
            request.setAttribute("success", "Se agrego correctamente");
        }else{
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/productos");
            rd.forward(request, response);
            request.setAttribute("error", "Oops, algo salio mal.");
        }
    
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
