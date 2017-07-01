/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import classes.Products;
import models.ModeloProducts;

/**
 *
 * @author Felipe
 */
public class ControladorProducto {
    
    public String getProductos(){
        ModeloProducts mp = new ModeloProducts();
        String htmlcode ="";
        
        for(Products producto: mp.getAllProductos()){
            htmlcode +="<div class=\"col-md-4 col-xs-6\">\n" +
"                    <div class=\"product-item\">\n" +
"                        <div class=\"product-img\">\n" +
"                            <!-- <a href=\"#\">-->\n" +
"                            <img src=\"_render?producto="+producto.getProductID()+"\" alt=\"\">\n" +
"                            <!--<img src=\"img/shop/shop_item_1_back.jpg\" alt=\"\" class=\"back-img\">-->\n" +
"                            <!--</a>-->\n" +
"                            <a href=\"shop-single-product.jsp?id="+producto.getProductID()+"\" class=\"product-quickview\">Ver Detalles</a>\n" +
"                        </div>\n" +
"                        <div class=\"product-details\">\n" +
"                            <h3>\n" +
"                                <p>"+producto.getProductName()+"</p>\n" +
"                            </h3>\n" +
"                            <span class=\"price\">\n" +
"                                <ins>\n" +
"                                    <span class=\"ammount\">$ "+producto.getProductPrice()+"</span>\n" +
"                                </ins>\n" +
"                            </span>\n" +
"                        </div>\n" +
"                    </div>\n" +
"                </div>";
        }
        
        
        
        return htmlcode;
        
    }
    
    
    
    public Products getProducto(int id){
    
        return new ModeloProducts().getAllProductos(id);
    }
    
    
    
    
    
}
