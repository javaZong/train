package com.train.service;

import com.train.dao.mapper.CourseDao;
import com.train.domain.Course;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by java_zong on 2017/7/11.
 */
@Service
public class CourseService {

    private Logger logger= LoggerFactory.getLogger(CourseService.class);

    @Autowired
    private CourseDao courseDao;

    public void addCourse(String courseName, String content, String courseIncome, Integer typeId) {
        courseDao.addCourse(courseName,content,courseIncome,typeId);
    }

    public Integer getTotal(Integer typeid) {
        return courseDao.getTotal(typeid);
    }

    public List<Course> getCourseList(Integer typeid, int offset, Integer pageSize) {
        return courseDao.getCourseList(typeid,offset,pageSize);
    }

    public Course showCourse(Integer courseid) {
        return courseDao.getCourse(courseid);
    }

    public int updateCourse(Integer courseid, String courseName, String content, String courseIncome, Integer typeid) {
       return courseDao.updateCourse(courseid,courseName,content,courseIncome,typeid);
    }

    public int delete(Integer courseid) {
        return courseDao.delete(courseid);
    }
}
