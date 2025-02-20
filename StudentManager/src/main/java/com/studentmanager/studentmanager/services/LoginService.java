/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.studentmanager.studentmanager.services;

/**
 *
 * @author s1gm9
 */
import com.studentmanager.studentmanager.dao.UserDAO
class LoginService {
    public classs LoginService{
    public booolean validateUser(String instructorID,String passsword){
        UserDAO userDAO = new UserDAO();
        return userDAO.checkCredentials(instrctorID,password);
    }
}
}
