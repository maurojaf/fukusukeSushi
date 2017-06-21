/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.administracion;

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
import models.ModeloUsers;

/**
 *
 * @author mauricioatenas
 */
@WebServlet(name = "BorrarUsuario", urlPatterns = {"/borrarUsuario"})
public class BorrarUsuario extends HttpServlet {

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
          request.getRequestDispatcher("/BorrarUsuarios.jsp").forward(request, response);  
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
        
        
        String id = request.getParameter("user");
        int identify = Integer.parseInt(id);
        
        ModeloUsers usuarioModel = new ModeloUsers();
        Users usuario = usuarioModel.listaUsuarios(identify);
        
        request.setAttribute("borrar", usuario);   
        
        if (request.getParameterMap().containsKey("confirmar")) {
            String confirmar = "0";
            confirmar = request.getParameter("confirmar");
            
            boolean resultado = usuarioModel.borrarUsuarios(usuario);
        
        if (resultado) {
            request.setAttribute("success", "Se ah borrado correctamente el Usuario");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listar");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
            
            
            
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listar");
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
        String id = request.getParameter("user");
        int identify = Integer.parseInt(id);
        
        ModeloUsers usuarioModel = new ModeloUsers();
        Users user = usuarioModel.listaUsuarios(identify);
        
        boolean resultado = usuarioModel.borrarUsuarios(user);
        
        if (resultado) {
            request.setAttribute("success", "Se ah borrado correctamente el usuario");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listar");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
        request.setAttribute("usuario", user);
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
