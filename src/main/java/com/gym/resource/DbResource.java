package com.gym.resource;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbResource {
    static Connection con;

    // this code loaded only once
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ZumbaApp_GymManagementSolutions", "root","");
   
        	
        } catch (Exception e) {
        	 if(con!=null){
        	        System.out.println("connected");
        	        }else {
        	        	System.out.println("notconnected");
        	        }
        	        	
            System.err.println("Db Connection error " + e);
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
    public static void main(String[] args) {
		Connection con=getDbConnection();
		System.out.println(con);
	}
}


