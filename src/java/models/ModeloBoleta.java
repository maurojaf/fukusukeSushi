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
 * @author mauricioatenas
 */
public class ModeloBoleta extends Conexion{
    
    public ArrayList<Orders> ObtenerBoleta() {
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
    
}
