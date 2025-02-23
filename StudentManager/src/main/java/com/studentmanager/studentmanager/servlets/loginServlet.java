
package com.studentmanager.studentmanager.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import com.studentmanager.dao.UserDAO;
/**
 *
 * @author s1gm9
 */
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String instructorID = request.getParameter("instructor-id");
        String password=request.getParameter("password");
        LoginService loginService= new LoginService();
        boolean isvaliduser = loginService.validateuser(instructorID,password);
        if(isvaliduser){
            HttpSession session = request.getSession();
            session.setAttribute("user",instructorID);
            response.sendRedirect("dashboard.jsp");
        }
        else{
            request.setAttribute("errorMessage","Invalid instructor Id or password");
        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    
    private static class LoginService {
        public boolean validateuser(String instructorID, String password)
            {
                UserDAO userDAO = new UserDAO();
                return userDAO.checkCredentials(instructorID, password);
            }
    }
}