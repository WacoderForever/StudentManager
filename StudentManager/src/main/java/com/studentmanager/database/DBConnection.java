package com.studentmanager.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    static {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Failed to load MariaDB driver", e);
        }
    }

    private static final String URL = "jdbc:mariadb://localhost:3306/student_manager";
    private static final String USER = "root";
    private static final String PASSWORD = "seth2019"; 

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}