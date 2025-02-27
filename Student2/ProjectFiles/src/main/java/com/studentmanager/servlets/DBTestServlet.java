package com.studentmanager.servlets;

import com.studentmanager.database.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/testdb")
public class DBTestServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request,HttpServletResponse response)
    throws ServletException,IOException{
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        try (Connection conn=DBConnection.getConnection()){
            if(conn != null){
                out.println("<h3>Database Connection success</h3>");
            }
            else{
                out.println("<h3>Database connection failed.</h3>");
            }
        } catch (SQLException e) {
            out.println("<h3>Error:"+e.getMessage()+"</h3>");
            e.printStackTrace();
        }
    }
}
