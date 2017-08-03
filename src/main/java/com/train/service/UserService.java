package com.train.service;

import com.train.dao.mapper.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.stereotype.Service;


/**
 * Created by java_zong on 2017/7/9.
 */
@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    private Md5PasswordEncoder md5 = new Md5PasswordEncoder();

    /**
     * 添加用户s
     * @param username
     * @param password
     */
    public void addUser(String username, String password) {
        int i = userDao.addUser(username, md5.encodePassword(password,null));
        System.out.println("adduser" + i);
    }
}
