package com.studentmanager.studentmanager.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author s1gm9
 */
class DatabaseConnection {
    
    private static final String URL = "jdbc:mariadb://localhost:3306/StudentManager";
    private static final String USER = "root";
    private static final String PASSWORD = "m9r19db";

    public static Connection getConnection()
    {
        Connection conn = null;
        try
        {
            Class.forName("org.mariadb.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e)
        {
            System.out.println("Driver not found: " + e.getMessage());
        } catch (SQLException e)
        {
            System.out.println("Database connection failed: " + e.getMessage());
        }
        return conn;
    }
    
}