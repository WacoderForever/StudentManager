package com.studentmanager.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static Connection con = null;

    // Database Credentials (Update if needed!)
    private static final String URL = "jdbc:mariadb://localhost:3306/StudentManager";
    private static final String USER = "root";
    private static final String PASSWORD = "m9r19db";

    static {
        try {
            // Load MySQL JDBC Driver
            Class.forName("org.mariadb.jdbc.Driver");

            // Establish Connection
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Database connection established successfully.");

        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Failed to establish database connection!");
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        if (con == null) {
            try {
                con = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Reconnecting to the database...");
            } catch (SQLException e) {
                System.err.println("Database reconnection failed!");
                e.printStackTrace();
            }
        }
        return con;
    }
}