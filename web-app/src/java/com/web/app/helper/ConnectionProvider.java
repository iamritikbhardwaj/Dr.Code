package com.web.app.helper;

import java.sql.*;

public class ConnectionProvider {
     
   private static Connection con;
   
   public static Connection getConnection() {
       try {
           if(con == null) {
               // loading drivers for mysql connector
               Class.forName("com.mysql.cj.jdbc.Driver");
               
               // creating connection
               con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "ritik", "Cherry@1");

           }
       } catch (Exception e) {
           e.printStackTrace();
       }
       return con;
   }
   
   public static Connection destroyConnection() {
       con = null;
       return con;
   }
    
}
