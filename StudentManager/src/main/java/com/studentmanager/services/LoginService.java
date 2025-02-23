/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.studentmanager.services;
import com.studentmanager.dao.UserDAO;

/**
 *
 * @author s1gm9
 */
public class LoginService
{
       public boolean validateuser(String instructorID, String password)
            {
                UserDAO userDAO = new UserDAO();
                return userDAO.checkCredentials(instructorID, password);
            }
}