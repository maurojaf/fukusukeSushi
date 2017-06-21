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
public class Products {
    
    private int ProductID;
    private String ProductSKU;
    private String ProductName;
    private float ProductPrice;
    private float ProductWeight;
    private String ProductLongDesc;
    private String ProductThumb;
    private String ProductImage;
    private int ProductCategoryID;
    private Date ProductUpdateDate;
    private float ProductStock;
    private boolean ProductLive;

    public Products(int ProductID, String ProductSKU, String ProductName, float ProductPrice, float ProductWeight, String ProductLongDesc, String ProductThumb, String ProductImage, int ProductCategoryID, Date ProductUpdateDate, float ProductStock, boolean ProductLive) {
        this.ProductID = ProductID;
        //this.ProductSKU = null;
        this.ProductName = ProductName;
        this.ProductPrice = ProductPrice;
        //this.ProductWeight = 0;
        this.ProductLongDesc = ProductLongDesc;
        //this.ProductThumb = null;
        this.ProductImage = ProductImage;
        //this.ProductCategoryID = 0;
        //this.ProductUpdateDate = null;
        this.ProductStock = ProductStock;
        this.ProductLive = true;
    }

    public Products() {
        
    }

    public int getProductID() {
        return ProductID;
    }

    public void setProductID(int ProductID) {
        this.ProductID = ProductID;
    }

    public String getProductSKU() {
        return ProductSKU;
    }

    public void setProductSKU(String ProductSKU) {
        this.ProductSKU = ProductSKU;
    }

    public String getProductName() {
        return ProductName;
    }

    public void setProductName(String ProductName) {
        this.ProductName = ProductName;
    }

    public float getProductPrice() {
        return ProductPrice;
    }

    public void setProductPrice(float ProductPrice) {
        this.ProductPrice = ProductPrice;
    }

    public float getProductWeight() {
        return ProductWeight;
    }

    public void setProductWeight(float ProductWeight) {
        this.ProductWeight = ProductWeight;
    }

    public String getProductLongDesc() {
        return ProductLongDesc;
    }

    public void setProductLongDesc(String ProductLongDesc) {
        this.ProductLongDesc = ProductLongDesc;
    }

    public String getProductThumb() {
        return ProductThumb;
    }

    public void setProductThumb(String ProductThumb) {
        this.ProductThumb = ProductThumb;
    }

    public String getProductImage() {
        return ProductImage;
    }

    public void setProductImage(String ProductImage) {
        this.ProductImage = ProductImage;
    }

    public int getProductCategoryID() {
        return ProductCategoryID;
    }

    public void setProductCategoryID(int ProductCategoryID) {
        this.ProductCategoryID = ProductCategoryID;
    }

    public Date getProductUpdateDate() {
        return ProductUpdateDate;
    }

    public void setProductUpdateDate(Date ProductUpdateDate) {
        this.ProductUpdateDate = ProductUpdateDate;
    }

    public float getProductStock() {
        return ProductStock;
    }

    public void setProductStock(float ProductStock) {
        this.ProductStock = ProductStock;
    }

    public boolean isProductLive() {
        return ProductLive;
    }

    public void setProductLive(boolean ProductLive) {
        this.ProductLive = ProductLive;
    }
    
    
}
