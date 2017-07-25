package com.train.controller.admin;

import com.google.common.collect.Maps;
import com.train.domain.Course;
import com.train.domain.Result;
import com.train.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by java_zong on 2017/7/11.
 */
@Controller
@RequestMapping(value = "/admin/course")
public class CourseController {

    @Autowired
    private CourseService courseService;


    private Integer pageSize = 10;

    @RequestMapping(value = "add")
    @ResponseBody
    public Result add(@RequestParam(value = "courseName") String courseName,
                      @RequestParam(value = "content") String content,
                      @RequestParam(value = "courseIncome") String courseIncome,
                      @RequestParam(value = "typeId") Integer typeId) {
        courseService.addCourse(courseName, null, courseIncome, typeId);
        return new Result(0);
    }


    @RequestMapping(value = "courseList")
    @ResponseBody
    public Map<String, Object> showCourseList(@RequestParam(value = "pageNo", required = false) Integer pageNo,
                                              @RequestParam(value = "typeid", required = false) Integer typeid) {
        Map<String, Object> map = Maps.newHashMap();
        pageNo = pageNo == null ? 1 : pageNo;

        int pageCount = 0;
        int offset = 0;

        int total = courseService.getTotal(typeid);
        List<Course> clist = null;
        if (total > 0) {
            int i = total / pageSize;
            if (total % pageSize == 0) {
                pageCount = i;
            } else {
                pageCount = i + 1;
            }

            if (pageNo > pageCount) {
                pageNo = pageCount;
            }
            offset = (pageNo - 1) * pageSize;
            clist = courseService.getCourseList(typeid, offset, pageSize);
        }
        map.put("list", clist);
        map.put("pageCount", pageCount);
        map.put("pageNo", pageNo);
        return map;

    }

    /**
     * 课程详情
     *
     * @param courseid
     * @return
     */
    @RequestMapping(value = "show")
    @ResponseBody
    public Course show(@RequestParam(value = "courseid") Integer courseid) {
        Course course = courseService.showCourse(courseid);
        return course;
    }


    /**
     * 更新
     *
     * @param courseid
     * @param courseName
     * @param content
     * @param courseIncome
     * @param typeid
     * @return
     */
    @RequestMapping(value = "update")
    @ResponseBody
    public Result update(@RequestParam(value = "courseid") Integer courseid,
                         @RequestParam(value = "courseName") String courseName,
                         @RequestParam(value = "content") String content,
                         @RequestParam(value = "courseIncome") String courseIncome,
                         @RequestParam(value = "typeid") Integer typeid) {

        int i = courseService.updateCourse(courseid, courseName, content, courseIncome, typeid);
        return isSuccess(i);

    }

    /**
     * 删除
     * @param courseid
     * @return
     */
    @RequestMapping(value = "delete")
    @ResponseBody
    public Result delete(@RequestParam(value = "courseid") Integer courseid){
        int i=courseService.delete(courseid);
        return isSuccess(i);
    }

    private Result isSuccess(Integer i){
        if (i > 0) {
            return new Result(0);
        } else {
            return new Result(1);
        }
    }

}
