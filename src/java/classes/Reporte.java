/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.Date;

/**
 *
 * @author mauricioatenas
 */
public class Reporte {
    
    private int OrderAmount;
    private String OrderDate;
    private int DetailOrderID;
    private String ProductName;
    private int ProductPrice;

    public Reporte(int OrderAmount, String OrderDate, int DetailOrderID, String ProductName, int ProductPrice) {
        this.OrderAmount = OrderAmount;
        this.OrderDate = OrderDate;
        this.DetailOrderID = DetailOrderID;
        this.ProductName = ProductName;
        this.ProductPrice = ProductPrice;
    }
    
    public Reporte(){}

    public int getOrderAmount() {
        return OrderAmount;
    }

    public void setOrderAmount(int OrderAmount) {
        this.OrderAmount = OrderAmount;
    }

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String OrderDate) {
        this.OrderDate = OrderDate;
    }

    public int getDetailOrderID() {
        return DetailOrderID;
    }

    public void setDetailOrderID(int DetailOrderID) {
        this.DetailOrderID = DetailOrderID;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public int getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(int ProductPrice) {
        this.ProductPrice = ProductPrice;
    }
    
    
    
    
}
