package com.studentmanager.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.studentmanager.database.DatabaseConnection;

public class UserDAO {
    private Connection con;

    public UserDAO() {
        this.con = DatabaseConnection.getConnection();
    }

    public boolean checkCredentials(String username, String password) {
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        try (PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next(); // Returns true if credentials are found
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}