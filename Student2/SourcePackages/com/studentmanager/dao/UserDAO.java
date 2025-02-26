package com.studentmanager.dao;

import com.studentmanager.database.DatabaseConnection;
import com.studentmanager.models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {

    // Authenticate instructor using instructor_id
    public static User authenticateInstructor(String instructorId, String password) {
        String query = "SELECT * FROM instructors WHERE instructor_id = ? AND password = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, instructorId);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new User(
                    rs.getInt("id"),
                    rs.getString("name"),
                    rs.getString("email"),  // Keeping email in the entity
                    rs.getString("instructor_id") // Using instructor_id for login
                );
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle properly in servlets
        }
        return null;
    }

    // Register a new instructor (Ensuring email and instructor_id are unique)
    public static boolean registerInstructor(String instructorId, String name, String email, String password) {
        String query = "INSERT INTO instructors (instructor_id, name, email, password) VALUES (?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, instructorId);
            stmt.setString(2, name);
            stmt.setString(3, email);
            stmt.setString(4, password);
            
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle in servlets
        }
        return false;
    }
}
