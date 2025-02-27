package com.studentmanager.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    private static final String URL="jdbc:mariadb://localhost:3306/student_management";
    private static final String USER="root";
    private static final String PASSWORD="seth2019";
    private static Connection connection=null;

    static{
        try {
            Class.forName("org.mariadb.jdbc.Driver");    //load mariadb driver
            connection=DriverManager.getConnection(URL,USER,PASSWORD);  //establish connection

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Databse connection failed");
        }
    }

    public static Connection getConnection(){
        return connection;
    }
}
