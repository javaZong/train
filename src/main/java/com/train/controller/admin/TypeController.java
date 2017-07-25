package com.train.controller.admin;

import com.train.domain.Result;
import com.train.domain.Type;
import com.train.service.TypeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * 课程大类-控制器
 * Created by java_zong on 2017/7/2.
 */
@Controller
@RequestMapping(value = "/admin/type")
public class TypeController {
    private Logger logger = LoggerFactory.getLogger(TypeController.class);


    @Autowired
    private TypeService typeService;

    /**
     * 添加课程大类
     *
     * @param typeName
     * @param memo
     * @return
     */
    @RequestMapping(value = "addType")
    @ResponseBody
    public Result addType(@RequestParam(value = "typeName") String typeName,
                          @RequestParam(value = "memo", required = false) String memo) {
        boolean isSuccess = typeService.addType(typeName, memo);
        if (isSuccess) {
            return new Result(0);
        } else {
            return new Result(1);
        }
    }

    /**
     * 课程大类列表
     *
     * @return
     */
    @RequestMapping(value = "/typeList")
    @ResponseBody
    public List<Type> list() {
        List<Type> typeList = typeService.getTypeList();
        return typeList;
    }

    /**
     * 课程大类详情
     *
     * @param typeid
     * @return
     */
    @RequestMapping(value = "show")
    @ResponseBody
    public Type show(@RequestParam(value = "typeid") Integer typeid) {
        Type type = typeService.show(typeid);
        return type;
    }

    /**
     * 更新课程大类信息
     *
     * @param typeid
     * @param typeName
     * @param memo
     * @return
     */
    @RequestMapping(value = "update")
    @ResponseBody
    public Result update(@RequestParam(value = "typeid") Integer typeid,
                         @RequestParam(value = "typeName") String typeName,
                         @RequestParam(value = "memo") String memo) {
        boolean isSuccess = typeService.update(typeid, typeName, memo);
        if (isSuccess) {
            return new Result(0);
        } else {
            return new Result(1);
        }
    }

    /**
     * 删除
     * @param typeid
     * @return
     */
    @RequestMapping(value = "delete")
    @ResponseBody
    public Result delete(@RequestParam(value = "typeid") Integer typeid) {
        boolean isSuccess = typeService.delete(typeid);
        if (isSuccess) {
            return new Result(0);
        } else {
            return new Result(1);
        }
    }


}
