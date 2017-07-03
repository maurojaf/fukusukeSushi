/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.Products;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
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
@WebServlet(name = "RenderImageServlet", urlPatterns = {"/_render"})
public class RenderImageServlet extends HttpServlet {
   
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
        String idProducto = request.getParameter("producto").toString();
        int id = Integer.parseInt(idProducto);
        
        ModeloProducts model = new ModeloProducts();
        Products prod = model.getAllProductos(id);
        
        OutputStream output = response.getOutputStream();
        output.write(prod.getImagebyteCode());
        output.close();
        response.setContentType("image/jpeg");
    }


}
