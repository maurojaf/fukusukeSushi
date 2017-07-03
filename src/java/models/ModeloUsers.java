/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Users;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


/**
 *
 * @author Felipe
 */
public class  ModeloUsers extends Conexion { 
    
    
    public Users getAllUsers(String correo, String contrasena) {
        Users cliente = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        

        try {
            String sql = "SELECT * FROM Users WHERE UserEmail = ? AND UserPassword = ? AND UserEmailVerified = 1";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, correo);
            pst.setString(2, contrasena);
            rs = pst.executeQuery();
            while (rs.next()) {
                cliente = new Users(rs.getInt("UserID"), rs.getString("UserEmail"), rs.getString("UserPassword"), rs.getString("UserFirstName"), rs.getString("UserLastName"), rs.getString("UserCity"), rs.getString("UserAddress"),rs.getBoolean("UserEmailVerified"), rs.getDate("UserRegistrationDate"), rs.getString("UserPhone"));
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
    
    
    public ArrayList<Users> listarTodosUsuarios() {
        ArrayList<Users> usuarios = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM users";            
            pst = getConnection().prepareStatement(sql);
            
            rs = pst.executeQuery();
            while (rs.next()) {
                usuarios.add(new Users(rs.getInt("UserID"), rs.getString("UserEmail"), rs.getString("UserPassword"), rs.getString("UserFirstName"), rs.getString("UserLastName"), rs.getString("UserCity"), rs.getString("UserAddress"),rs.getBoolean("UserEmailVerified"), rs.getDate("UserRegistrationDate"), rs.getString("UserPhone")));
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

        return usuarios;
    }
    
    
    
    
    public Users listaUsuarios(int id) {
        Users usuario = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM users WHERE UserID = ?";            
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                usuario = new Users(rs.getInt("UserID"), rs.getString("UserEmail"), rs.getString("UserPassword"), rs.getString("UserFirstName"), rs.getString("UserLastName"), rs.getString("UserCity"), rs.getString("UserAddress"),rs.getBoolean("UserEmailVerified"), rs.getDate("UserRegistrationDate"), rs.getString("UserPhone"));
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

        return usuario;
    }
    
    public boolean borrarUsuarios(Users usuario) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            if (super.getConnection().isClosed()) {
                super.connect();
            }

            String sql = "DELETE FROM users WHERE UserID = ? ";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, usuario.getUserID());

            pst.execute();
            resultado = true;

        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            System.out.println(e.getMessage());
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (!getConnection().isClosed()) {
                    getConnection().close();
                }
            } catch (Exception e) {
                System.out.println(e.getStackTrace());
                System.out.println(e.getMessage());
            }
        }
        return resultado;
    }
    
    
    
    public boolean actualizarUsuarios(Users usuario) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            if (super.getConnection().isClosed()) {
                super.connect();
            }

            String sql = "UPDATE users SET UserEmail=?,UserPassword=?,UserFirstName=?,UserLastName=?, UserPhone=?, UserAddress=? WHERE UserID = ?";
            pst = getConnection().prepareStatement(sql);
            
            pst.setString(1, usuario.getUserEmail());
            pst.setString(2, usuario.getUserPassword());
            
            pst.setString(3, usuario.getUserFirstName());
            
            pst.setString(4, usuario.getUserLastName());
           
            //pst.setDate(8, (java.sql.Date) producto.getProductUpdateDate());
            pst.setString(5, usuario.getUserPhone());
            
            pst.setString(6, usuario.getUserAddress());
            
            pst.setInt(7, usuario.getUserID());

            pst.execute();
            resultado = true;

        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            System.out.println(e.getMessage());
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (!getConnection().isClosed()) {
                    getConnection().close();
                }
            } catch (Exception e) {
                System.out.println(e.getStackTrace());
                System.out.println(e.getMessage());
            }
        }
        return resultado;
    }
    
    public boolean guardarUsuarios(Users usuario) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            String sql = "INSERT INTO users (UserEmail, UserPassword, UserFirstName, UserLastName, UserPhone, UserAddress) VALUES (?, ?, ?, ?, ?, ?)";
            pst = getConnection().prepareStatement(sql);
         
            pst.setString(1, usuario.getUserEmail());
            pst.setString(2, usuario.getUserPassword());            
            pst.setString(3, usuario.getUserFirstName());            
            pst.setString(4, usuario.getUserLastName());                       
            pst.setString(5, usuario.getUserPhone());            
            pst.setString(6, usuario.getUserAddress());
            

            pst.execute();
            resultado = true;

        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            System.out.println(e.getMessage());
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (!getConnection().isClosed()) {
                    getConnection().close();
                }
            } catch (Exception e) {
                System.out.println(e.getStackTrace());
                System.out.println(e.getMessage());
            }
        }
        return resultado;
    }
    
    
    
}
