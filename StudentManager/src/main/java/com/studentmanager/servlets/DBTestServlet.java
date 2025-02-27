package com.studentmanager.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import com.studentmanager.database.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class DBTestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try (Connection conn = DBConnection.getConnection()) {
            response.getWriter().println("Database connection successful!");
        } catch (SQLException e) {
            response.getWriter().println("Database connection failed: " + e.getMessage());
        }
    }
}
