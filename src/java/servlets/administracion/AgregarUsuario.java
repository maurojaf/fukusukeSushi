/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.administracion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import classes.Users;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import models.ModeloUsers;



/**
 *
 * @author mauricioatenas
 */
@WebServlet(name = "AgregarUsuario", urlPatterns = {"/agregarUsuario"})
public class AgregarUsuario extends HttpServlet {

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
            request.getRequestDispatcher("/AgregarUsuarios.jsp").forward(request, response);
            
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
        
        if (id != null) {
            int identify = Integer.parseInt(id);
        
            ModeloUsers userModel = new ModeloUsers();
            Users usuario = userModel.listaUsuarios(identify);
        
            request.setAttribute("usuario", usuario);
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
        
        String correo = request.getParameter("correo");
        String pass  = request.getParameter("password");                        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        //int precioInt = Integer.parseInt(precio);        
        Users user = new Users();
        
        //prod.setProductID();
        user.setUserEmail(correo);
        user.setUserPassword(pass);
        user.setUserFirstName(nombre);
        user.setUserLastName(apellido);
        user.setUserPhone(telefono);
        user.setUserAddress(direccion);
        
        ModeloUsers usuariosModel = new ModeloUsers();
        boolean resultado = usuariosModel.guardarUsuarios(user);
        
        if (resultado) {
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listar");
            rd.forward(request, response);
            request.setAttribute("success", "Se agrego correctamente");
        }else{
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listar");
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
