package com.gym.resource;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbResource {
    static Connection con;

    // this code loaded only once
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ZumbaApp_GymManagementSolutions", "root","root");
   
        	
        } catch (Exception e) {
        	
            e.printStackTrace();
        }
    }

    public static Connection getDbConnection() {
        return con;
    }

    public static void close() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (Exception e) {
            System.err.println("Close connection error " + e);
        }
    }
  
}


