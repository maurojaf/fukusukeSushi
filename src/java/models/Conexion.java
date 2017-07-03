/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Felipe
 */
public class Conexion {

    private String username = "root";
    private String password = "test";
    private String hostname = "INFOPC3-PC\\SQLEXPRESS";
    private String port = "";
    private String database = "sushifukusuke";
    private String classname = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private String url = "jdbc:sqlserver://" + hostname + ":" + port + "/" + database;
    private Connection conn;

    public Conexion() {
        try {
            Class.forName(classname);
            conn = DriverManager.getConnection("jdbc:sqlserver://INFOPC3-PC\\SQLEXPRESS:1433;databaseName=sushifukusuke", username, password );
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

//    public Conexion() {
//        try {
//            String connectionUrl = "jdbc:sqlserver://INFOPC3-PC\\SQLEXPRESS:1433;databaseName=sushifukusuke";
//            conn = DriverManager.getConnection(connectionUrl);
//            System.out.println("Conectado.");
//        } catch (SQLException ex) {
//            System.out.println("Error.");
//        }
//
//    }

    public Connection connect() throws Exception {
        if (this.conn.isClosed()) {
            this.conn = DriverManager.getConnection(url, username, password);
        }
        return this.conn;
    }

    public Connection getConnection() {
        return this.conn;
    }

}
