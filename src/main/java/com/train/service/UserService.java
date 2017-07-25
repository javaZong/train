package com.train.service;

import com.train.dao.mapper.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * Created by java_zong on 2017/7/9.
 */
@Service
public class UserService {

    @Autowired
    private UserDao userDao;


    public void addUser(String username, String password) {
       int i= userDao.addUser(username,password);
       System.out.println("adduser"+i);
    }
}
