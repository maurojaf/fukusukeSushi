/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Felipe
 */
public class ConexionMYSQL {
    
    private String username="root";
    private String password="";
    private String hostname="localhost";
    private String port="3306";
    private String database="sushifukusuke";
    private String classname="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://"+hostname+":"+port+"/"+database;
    private Connection conn;

    public ConexionMYSQL() {
        try {
            Class.forName(classname);
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public Connection connect()throws Exception{
        if(this.conn.isClosed()){
            this.conn = DriverManager.getConnection(url, username, password);
        }
          return this.conn;  
    }
    
    public Connection getConnection(){
        return this.conn;
    }
    
    
    
    
    
    
    
}
