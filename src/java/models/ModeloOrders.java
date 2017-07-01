/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Articulo;
import classes.Orders;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
                ordenes.add(new Orders(rs.getInt("OrderID"), rs.getInt("orderIDCliente"), rs.getInt("OrderAmount"), rs.getString("OrderShipName"), rs.getString("OrderShipAddress"), rs.getString("OrderPhone"), rs.getInt("OrderShipping"), rs.getString("OrderEmail"), rs.getString("OrderDate"), rs.getBoolean("OrderShipped"), rs.getString("OrderTrackingNumber")));
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
                orden = new Orders(rs.getInt("OrderID"), rs.getInt("orderIDCliente"), rs.getInt("OrderAmount"), rs.getString("OrderShipName"), rs.getString("OrderShipAddress"), rs.getString("OrderPhone"), rs.getInt("OrderShipping"), rs.getString("OrderEmail"), rs.getString("OrderDate"), rs.getBoolean("OrderShipped"), rs.getString("OrderTrackingNumber"));
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

    public boolean guardarOrden(Orders orden) {
        boolean resultado = false;
        PreparedStatement pst = null;
        int orderId = 0;
        
        try {
            String sql = "INSERT INTO orders (orderIDCliente, OrderAmount, OrderShipAddress, OrderEmail, OrderPhone,  OrderShipped) VALUES (?, ?, ?, ?, ?, ?)";
            pst = getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            
            pst.setInt(1, orden.getOrderIDCliente());
            pst.setFloat(2, orden.totalOrder());
            pst.setString(3, orden.getOrderShipAddress());
            pst.setString(4, orden.getOrderEmail());
            pst.setString(5, orden.getOrderPhone());
            pst.setBoolean(6, false);

            pst.executeUpdate();

            ResultSet rs = pst.getGeneratedKeys();
            rs.next();
            orderId = rs.getInt(1);

            String detallesQuery = "INSERT INTO orderdetails (DetailOrderID, DetailProductID, DetailQuantity) VALUES (?,?,?)";
            PreparedStatement stmt = getConnection().prepareStatement(detallesQuery);
            
            for (Articulo detalle : orden.getDetalles()) {
                stmt.setInt(1, orderId);
                stmt.setInt(2, detalle.getIdProducto());
                stmt.setInt(3, detalle.getCantidad());
                
                stmt.execute();
                
                String descuentoStock = "UPDATE products SET ProductStock = ? WHERE ProductID = ?";
                PreparedStatement stmt1 = getConnection().prepareStatement(descuentoStock);
                
                int calculoStock = detalle.getProducto().getProductStock() - detalle.getCantidad();
                
                stmt1.setInt(1, calculoStock);
                stmt1.setInt(2, detalle.getProducto().getProductID());
                
                stmt1.execute();
                
            }
            
            
            
            
            resultado = true;

        } catch (Exception e) {
            System.out.println(e.getStackTrace());
            System.out.println(e.getMessage());
            try{
                PreparedStatement statement = getConnection().prepareStatement("DELETE FROM Orders WHERE  OrderId = ?");
                statement.setInt(1, orderId);
                statement.execute();
            }catch(Exception ex){
            }
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
