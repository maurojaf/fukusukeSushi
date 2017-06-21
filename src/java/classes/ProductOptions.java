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
public class ProductOptions {
    
    private int ProductOptionID;
    private int ProductID;
    private int OptionID;
    private double OptionPriceIncrement;
    private int OptionGroupID;

    public ProductOptions(int ProductOptionID, int ProductID, int OptionID, double OptionPriceIncrement, int OptionGroupID) {
        this.ProductOptionID = ProductOptionID;
        this.ProductID = ProductID;
        this.OptionID = OptionID;
        this.OptionPriceIncrement = OptionPriceIncrement;
        this.OptionGroupID = OptionGroupID;
    }
    
    public ProductOptions()
    {
        
    }

    public int getProductOptionID() {
        return ProductOptionID;
    }

    public void setProductOptionID(int ProductOptionID) {
        this.ProductOptionID = ProductOptionID;
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public int getOptionID() {
        return OptionID;
    }

    public void setOptionID(int OptionID) {
        this.OptionID = OptionID;
    }

    public double getOptionPriceIncrement() {
        return OptionPriceIncrement;
    }

    public void setOptionPriceIncrement(double OptionPriceIncrement) {
        this.OptionPriceIncrement = OptionPriceIncrement;
    }

    public int getOptionGroupID() {
        return OptionGroupID;
    }

    public void setOptionGroupID(int OptionGroupID) {
        this.OptionGroupID = OptionGroupID;
    }
    
    
}
