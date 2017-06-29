/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Usuario;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author felipesepulveda
 */
public class ModeloCliente extends Conexion {
    

    public void insertUser(String nombre, String rut, String direccion, String comuna, String provincia, String region, String fecha_nachimiento, String sexo, String correo, String telefono, String contrasena) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call nuevoCliente('" + nombre + "','" + rut + "','" + direccion + "','" + comuna + "','" + provincia + "','" + region + "','" + fecha_nachimiento + "','" + sexo + "', '" + correo + "','" + telefono + "', '" + contrasena+"')";
            pst = getConnection().prepareCall(sql);
            rs = pst.executeQuery();

        } catch (Exception e) {
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    rs.close();
                }
                if (getConnection() != null) {
                    getConnection().close();
                }
            } catch (Exception e) {
            }

        }        
    }
    
    public Usuario login(String correo, String contrasena) {
        Usuario cliente = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
       
        try {
            String sql = "SELECT * FROM clientes WHERE correo = ? AND contrasena = ?";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, correo);
            pst.setString(2, contrasena);
            rs = pst.executeQuery();
            while (rs.next()) {
                cliente = new Usuario(rs.getInt("id_cliente"), rs.getString("nombre"), rs.getString("rut"), rs.getString("direccion"), rs.getString("comuna"), rs.getString("provincia"), rs.getString("region"),rs.getString("fecha_nacimiento"), rs.getString("sexo"), rs.getString("correo"), rs.getString("telefono"), rs.getString("contrasena"));
            }

        } catch (Exception e) {
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    rs.close();
                }
                if (getConnection() != null) {
                    getConnection().close();
                }
            } catch (Exception e) {
            }
        }

        return cliente;
    }
    
    
    
    
    
    
}
