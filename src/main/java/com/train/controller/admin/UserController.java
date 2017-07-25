package com.train.controller.admin;

import com.train.domain.Result;
import com.train.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by java_zong on 2017/7/8.
 */
@Controller
@RequestMapping(value = "/admin/user")
public class UserController {
    private Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @RequestMapping("add")
    @ResponseBody
    public Result addUser(@RequestParam(value = "username") String username,
                          @RequestParam(value = "password") String password) {
        userService.addUser(username, password);
        return new Result(0);
    }

}
