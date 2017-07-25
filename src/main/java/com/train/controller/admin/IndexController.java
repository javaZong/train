package com.train.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by java_zong on 2017/7/2.
 */
@Controller
@RequestMapping(value = "/admin")
public class IndexController {

    private Logger logger= LoggerFactory.getLogger(IndexController.class);

    @RequestMapping(value = "/{page}")
    public String index(@PathVariable("page")  String page){
        return "/admin/"+page;
    }

}
