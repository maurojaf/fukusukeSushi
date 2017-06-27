/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Orders;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


/**
 *
 * @author Felipe
 */
public class ModeloOrders extends Conexion {
    
    
    
    

    public ArrayList<Orders> getAllOrdenes() {
        ArrayList<Orders> ordenes = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM orders";
            pst = getConnection().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                ordenes.add(new Orders(rs.getInt("OrderID"), rs.getInt("OrderUserID"), rs.getInt("OrderAmount"), rs.getString("OrderShipName"), rs.getString("OrderShipAddress"), rs.getString("OrderPhone"), rs.getInt("OrderShipping"), rs.getString("OrderEmail"), rs.getString("OrderDate"), rs.getBoolean("OrderShipped"), rs.getString("OrderTrackingNumber")));
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

        return ordenes;
    }

    public Orders getOrden(int id) {
        Orders orden = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM orders WHERE OrderID = ?";            
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                orden = new Orders(rs.getInt("OrderID"), rs.getInt("OrderUserID"), rs.getInt("OrderAmount"), rs.getString("OrderShipName"), rs.getString("OrderShipAddress"), rs.getString("OrderPhone"), rs.getInt("OrderShipping"), rs.getString("OrderEmail"), rs.getString("OrderDate"), rs.getBoolean("OrderShipped"), rs.getString("OrderTrackingNumber"));
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

        return orden;
    }

    //public boolean guardarOrdenes(Orders orden) {
      //  boolean resultado = false;
       // PreparedStatement pst = null;

//        try {
//            String sql = "INSERT INTO orders (OrderAmount, OrderShipName, OrderShipAddress, OrderPhone, OrderShipping, OrderEmail, OrderDate, OrderShipped,OrderTrackingNumber) VALUES (?, ?, ?, ?, ?, ?)";
//            pst = getConnection().prepareStatement(sql);
//         
//            pst.setString(1, producto.getProductName());
//            pst.setFloat(2, producto.getProductPrice());            
//            pst.setString(3, producto.getProductLongDesc());            
//            pst.setString(4, producto.getProductImage());                       
//            pst.setFloat(5, producto.getProductStock());            
//            pst.setBoolean(6, producto.isProductLive());
//            
//
//            pst.execute();
//            resultado = true;
//
//        } catch (Exception e) {
//            System.out.println(e.getStackTrace());
//            System.out.println(e.getMessage());
//        } finally {
//            try {
//                if (pst != null) {
//                    pst.close();
//                }
//                if (!getConnection().isClosed()) {
//                    getConnection().close();
//                }
//            } catch (Exception e) {
//                System.out.println(e.getStackTrace());
//                System.out.println(e.getMessage());
//            }
//        }
//        return resultado;
//    }
//    
    
    
    public boolean borrarOrden(Orders orden) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            if (super.getConnection().isClosed()) {
                super.connect();
            }

            String sql = "DELETE FROM orders WHERE OrderID = ? ";
            pst = getConnection().prepareStatement(sql);
            pst.setInt(1, orden.getOrderID());

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
    
    
    

    public boolean updateOrden(Orders orden) {
        boolean resultado = false;
        PreparedStatement pst = null;

        try {
            if (super.getConnection().isClosed()) {
                super.connect();
            }

            String sql = "UPDATE orders SET OrderAmount=?,OrderShipAddress=?,OrderPhone=?,OrderEmail=?, OrderShipped=? WHERE OrderID = ?";
            pst = getConnection().prepareStatement(sql);
            
            pst.setInt(1, orden.getOrderAmount());
            pst.setString(2, orden.getOrderShipAddress());
            
            pst.setString(3, orden.getOrderPhone());
            
            pst.setString(4, orden.getOrderEmail());
           
            //pst.setDate(8, (java.sql.Date) producto.getProductUpdateDate());
            pst.setBoolean(5, orden.isOrderShipped());            
            
            pst.setInt(6, orden.getOrderID());

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