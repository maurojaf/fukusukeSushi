/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Products;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Felipe
 */
public class ModeloProducts extends Conexion {

    public ArrayList<Products> getAllProductos() {
        ArrayList<Products> productos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call seleccionarProducts()";
            pst = getConnection().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                productos.add(new Products(rs.getInt("ProductID"), rs.getString("ProductSKU"), rs.getString("ProductName"), rs.getInt("ProductPrice"), rs.getInt("ProductWeight"), rs.getString("ProductLongDesc"), rs.getString("ProductThumb"), rs.getString("ProductImage"), rs.getInt("ProductCategoryID"), rs.getDate("ProductUpdateDate"), rs.getInt("ProductStock"), rs.getBoolean("ProductLive")));
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

        return productos;
    }

    public Products getAllProductos(int id) {
        Products producto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM products WHERE ProductID = ?";            
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                producto = new Products(rs.getInt("ProductID"), rs.getString("ProductSKU"), rs.getString("ProductName"), rs.getInt("ProductPrice"), rs.getInt("ProductWeight"), rs.getString("ProductLongDesc"), rs.getString("ProductThumb"), rs.getString("ProductImage"), rs.getInt("ProductCategoryID"), rs.getDate("ProductUpdateDate"), rs.getInt("ProductStock"), rs.getBoolean("ProductLive"));
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

        return producto;
    }

    public boolean guardarProductos(Products producto) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            String sql = "INSERT INTO products (ProductName, ProductPrice, ProductLongDesc, ProductImage, ProductStock, ProductLive) VALUES (?, ?, ?, ?, ?, ?)";
            pst = getConnection().prepareStatement(sql);
         
            pst.setString(1, producto.getProductName());
            pst.setFloat(2, producto.getProductPrice());            
            pst.setString(3, producto.getProductLongDesc());            
            pst.setString(4, producto.getProductImage());                       
            pst.setFloat(5, producto.getProductStock());            
            pst.setBoolean(6, producto.isProductLive());
            

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
    
    
    
    public boolean borrar(Products producto) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            if (super.getConnection().isClosed()) {
                super.connect();
            }

            String sql = "DELETE FROM products WHERE ProductID = ? ";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, producto.getProductID());

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
    
    
    

    public boolean update(Products producto) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            if (super.getConnection().isClosed()) {
                super.connect();
            }

            String sql = "UPDATE products SET ProductName=?,ProductPrice=?,ProductLongDesc=?,ProductImage=?, ProductStock=? WHERE ProductID = ?";
            pst = getConnection().prepareStatement(sql);
            
            pst.setString(1, producto.getProductName());
            pst.setFloat(2, producto.getProductPrice());
            
            pst.setString(3, producto.getProductLongDesc());
            
            pst.setString(4, producto.getProductImage());
           
            //pst.setDate(8, (java.sql.Date) producto.getProductUpdateDate());
            pst.setFloat(5, producto.getProductStock());            
            
            pst.setInt(6, producto.getProductID());

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
