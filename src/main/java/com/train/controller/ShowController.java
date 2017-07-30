package com.train.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 前台控制器
 * Created by java_zong on 2017/7/30.
 */
@Controller
public class ShowController {

    @RequestMapping(value = "dologin")
    public String tologin() {
        return "dologin";
    }

    




}
