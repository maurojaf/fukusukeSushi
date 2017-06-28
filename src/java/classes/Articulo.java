/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author Felipe
 */
public class Articulo {
    
    private int idProducto;
    private int cantidad;
    private int orderID;
    private int subtotal;
    private Products producto;
    
    public Articulo(int idProducto, int cantidad, int orderID, int subtotal) {
        this.idProducto = idProducto;
        this.cantidad = cantidad;
        this.orderID = orderID;
        this.subtotal = subtotal;
    }

    public Articulo() {
    }

    public Articulo(int idproducto, int cantidad) {
        this.idProducto = idProducto;
        this.cantidad = cantidad;
        
    }
    

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public int getSubtotal() {
        if (producto instanceof Products) {
            this.subtotal = producto.getProductPrice() * this.cantidad;
        }
        
        return subtotal;
    }

    public void setSubtotal(int subtotal) {
        this.subtotal = subtotal;
    }

    /**
     * @return the idProducto
     */
    public int getIdProducto() {
        return idProducto;
    }

    /**
     * @param idProducto the idProducto to set
     */
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Products getProducto() {
        return producto;
    }

    public void setProducto(Products producto) {
        this.idProducto = producto.getProductID();
        this.producto = producto;
    }
    
}
