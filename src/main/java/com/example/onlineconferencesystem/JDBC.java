package com.example.onlineconferencesystem;

import java.sql.*;
public class JDBC {
    public static void main(String[] args) {
        Connection con;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "");
            if(con!=null){
                System.out.println ("Connected");
            }
        } catch (Exception e) {
            System.out.println("Fail");
        }
    }
}