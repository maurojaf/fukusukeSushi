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
public class Orders {
    
    private int OrderID;
    private int OrderUserID;
    private int OrderAmount;
    private String OrderShipName;
    private String OrderShipAddress;
    //private String OrderCity;
    //private String OrderCountry;
    private String OrderPhone;
    private int OrderShipping;
    //private int OrderTax;
    private String OrderEmail	;
    private String OrderDate;
    private boolean OrderShipped;
    private String OrderTrackingNumber;

    public Orders(int OrderID, int OrderUserID, int OrderAmount, String OrderShipName, String OrderShipAddress, String OrderPhone, int OrderShipping, String OrderEmail, String OrderDate, boolean OrderShipped, String OrderTrackingNumber) {
        this.OrderID = OrderID;
        this.OrderUserID = OrderUserID;
        this.OrderAmount = OrderAmount;
        this.OrderShipName = OrderShipName;
        this.OrderShipAddress = OrderShipAddress;
        this.OrderPhone = OrderPhone;
        this.OrderShipping = OrderShipping;
        this.OrderEmail = OrderEmail;
        this.OrderDate = OrderDate;
        this.OrderShipped = OrderShipped;
        this.OrderTrackingNumber = OrderTrackingNumber;
    }

    //public Orders(int OrderID, int OrderUserID, int OrderAmount, String OrderShipName, String OrderShipAddress, String OrderCity, String OrderCountry, String OrderPhone, int OrderShipping, int OrderTax, String OrderEmail, Date OrderDate, boolean OrderShipped, String OrderTrackingNumber) {
      //  this.OrderID = OrderID;
        //this.OrderUserID = OrderUserID;
       // this.OrderAmount = OrderAmount;
       // this.OrderShipName = OrderShipName;
       // this.OrderShipAddress = OrderShipAddress;
        //this.OrderCity = OrderCity;
        //this.OrderCountry = OrderCountry;
       // this.OrderPhone = OrderPhone;
       // this.OrderShipping = OrderShipping;
        //this.OrderTax = OrderTax;
        //this.OrderEmail = OrderEmail;
       // this.OrderDate = OrderDate;
        //this.OrderShipped = OrderShipped;
        //this.OrderTrackingNumber = OrderTrackingNumber;
   // }
    
    public Orders()
    {
        
    }
    

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getOrderUserID() {
        return OrderUserID;
    }

    public void setOrderUserID(int OrderUserID) {
        this.OrderUserID = OrderUserID;
    }

    public int getOrderAmount() {
        return OrderAmount;
    }

    public void setOrderAmount(int OrderAmount) {
        this.OrderAmount = OrderAmount;
    }

    public String getOrderShipName() {
        return OrderShipName;
    }

    public void setOrderShipName(String OrderShipName) {
        this.OrderShipName = OrderShipName;
    }

    public String getOrderShipAddress() {
        return OrderShipAddress;
    }

    public void setOrderShipAddress(String OrderShipAddress) {
        this.OrderShipAddress = OrderShipAddress;
    }

    //public String getOrderCity() {
      //  return OrderCity;
   // }

    //public void setOrderCity(String OrderCity) {
      //  this.OrderCity = OrderCity;
    //}

    //public String getOrderCountry() {
      //  return OrderCountry;
    //}

   // public void setOrderCountry(String OrderCountry) {
     //   this.OrderCountry = OrderCountry;
    //}

    public String getOrderPhone() {
        return OrderPhone;
    }

    public void setOrderPhone(String OrderPhone) {
        this.OrderPhone = OrderPhone;
    }

    public int getOrderShipping() {
        return OrderShipping;
    }

    public void setOrderShipping(int OrderShipping) {
        this.OrderShipping = OrderShipping;
    }

    //public int getOrderTax() {
      //  return OrderTax;
    //}

   // public void setOrderTax(int OrderTax) {
     //   this.OrderTax = OrderTax;
    //}

    public String getOrderEmail() {
        return OrderEmail;
    }

    public void setOrderEmail(String OrderEmail) {
        this.OrderEmail = OrderEmail;
    }

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String OrderDate) {
        this.OrderDate = OrderDate;
    }

    public boolean isOrderShipped() {
        return OrderShipped;
    }

    public void setOrderShipped(boolean OrderShipped) {
        this.OrderShipped = OrderShipped;
    }

    public String getOrderTrackingNumber() {
        return OrderTrackingNumber;
    }

    public void setOrderTrackingNumber(String OrderTrackingNumber) {
        this.OrderTrackingNumber = OrderTrackingNumber;
    }
    
    
    
}
