/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets.administracion;

import classes.Users;
import classes.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.ModeloCliente;

/**
 *
 * @author mauricioatenas
 */
@WebServlet(name = "EditarClientes", urlPatterns = {"/editarClientes"})
public class EditarClientes extends HttpServlet {

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
            request.getRequestDispatcher("/EditarCliente.jsp").forward(request, response);
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
        
        
        String id = request.getParameter("cliente");
        int identify = Integer.parseInt(id);
        
        ModeloCliente usuarioModel = new ModeloCliente();
        Usuario usuario = usuarioModel.listaUsuario(identify);
        
        request.setAttribute("usuario", usuario);
        
        
        
        
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
        
        String id = request.getParameter("usuario");
        int identify = Integer.parseInt(id);
        
        ModeloCliente usuarioModel = new ModeloCliente();
        Usuario usuario = usuarioModel.listaUsuario(identify);
        
        String nombre = request.getParameter("nombre");
        String rut = request.getParameter("rut");
        String direccion = request.getParameter("direccion");
        String comuna = request.getParameter("comuna");
        String provincia = request.getParameter("provincia");
        String region = request.getParameter("region");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String sexo = request.getParameter("sexo");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String pass  = request.getParameter("password");
        
        //int precioInt = Integer.parseInt(precio);
        
        usuario.setNombre(nombre);
        usuario.setRut(rut);
        usuario.setDireccion(direccion);
        usuario.setComuna(comuna);
        usuario.setProvincia(provincia);
        usuario.setRegion(region);
        usuario.setFecha_nacimiento(fecha_nacimiento);
        usuario.setSexo(sexo);
        usuario.setCorreo(correo);
        usuario.setTelefono(telefono);
        usuario.setContrasena(pass);
        
        boolean resultado = usuarioModel.actualizarUsuarios(usuario);
        
        if (resultado) {
            request.setAttribute("success", "Se actualizó correctamente el usuario: " + usuario.getNombre());
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/listarClientes");
            rd.forward(request, response);
        }else{
            request.setAttribute("error", "Oops, algo salio mal.");
        }
        request.setAttribute("usuario", usuario);
        
        
        
        
        
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
