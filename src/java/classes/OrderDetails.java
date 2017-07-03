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
public class OrderDetails {
    
    private int DetailID;
    private int DetailOrderID;
    private int DetailProductID;
    private String DetailName;
    private float DetailPrice;
    private String DetailSKU;
    private int DetailQuantity;

    public OrderDetails(int DetailID, int DetailOrderID, int DetailProductID, String DetailName, float DetailPrice, String DetailSKU, int DetailQuantity) {
        this.DetailID = DetailID;
        this.DetailOrderID = DetailOrderID;
        this.DetailProductID = DetailProductID;
        this.DetailName = DetailName;
        this.DetailPrice = DetailPrice;
        this.DetailSKU = DetailSKU;
        this.DetailQuantity = DetailQuantity;
    }
    
    public OrderDetails()
    {}
    
    public int getDetailID() {
        return DetailID;
    }

    public void setDetailID(int DetailID) {
        this.DetailID = DetailID;
    }

    public int getDetailOrderID() {
        return DetailOrderID;
    }

    public void setDetailOrderID(int DetailOrderID) {
        this.DetailOrderID = DetailOrderID;
    }

    public int getDetailProductID() {
        return DetailProductID;
    }

    public void setDetailProductID(int DetailProductID) {
        this.DetailProductID = DetailProductID;
    }

    public String getDetailName() {
        return DetailName;
    }

    public void setDetailName(String DetailName) {
        this.DetailName = DetailName;
    }

    public float getDetailPrice() {
        return DetailPrice;
    }

    public void setDetailPrice(float DetailPrice) {
        this.DetailPrice = DetailPrice;
    }

    public String getDetailSKU() {
        return DetailSKU;
    }

    public void setDetailSKU(String DetailSKU) {
        this.DetailSKU = DetailSKU;
    }

    public int getDetailQuantity() {
        return DetailQuantity;
    }

    public void setDetailQuantity(int DetailQuantity) {
        this.DetailQuantity = DetailQuantity;
    }
    
    
}
