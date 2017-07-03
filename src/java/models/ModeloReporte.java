/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import classes.Reporte;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author mauricioatenas
 */
public class ModeloReporte extends Conexion {

    public ArrayList<Reporte> ObtenerReporte(String fInicio, String fFin) {
        ArrayList<Reporte> reportes = new ArrayList<>();
        //Reporte reporte = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT a.OrderAmount, "
                    + "a.OrderDate, "
                    + "b.DetailOrderID, "
                    + "c.ProductName, "
                    + "c.ProductPrice "
                    + "FROM orders AS a "
                    + "INNER JOIN OrderDetails AS b ON a.OrderID = b.DetailOrderID "
                    + "INNER JOIN products AS c ON b.DetailProductID = c.ProductID "
                    + "WHERE CONVERT( OrderDate , DATE)"                    
                    + "= ? AND ?";
            pst = getConnection().prepareStatement(sql);
            pst.setString(1, fInicio);
            pst.setString(2, fFin);
            rs = pst.executeQuery();
            while (rs.next()) {
                reportes.add (new Reporte(rs.getInt("OrderAmount"), rs.getString("OrderDate"), rs.getInt("DetailOrderID"), rs.getString("ProductName"), rs.getInt("ProductPrice")));
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

        return reportes;
    }

}
