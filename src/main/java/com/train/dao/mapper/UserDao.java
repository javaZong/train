package com.train.dao.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by java_zong on 2017/7/9.
 */
public interface UserDao {

    /**
     * 添加管理员用户
     * @param username
     * @param password
     */
    @Insert("insert into user(`username`,`password`) values(#{username},#{password})")
    int addUser(@Param("username") String username, @Param("password") String password);
}
