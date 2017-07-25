package com.train.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * 课程
 * Created by java_zong on 2017/4/30.
 */
public class Course {
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Integer id;
    //课程名称
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String courseName;
    //课程内容
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String content;
    //课程收益
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String courseIncome;
    //课程大类
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Integer typeId;


    public Course(Integer id, String courseName, String content, String courseIncome, Integer typeId) {
        this.id = id;
        this.courseName = courseName;
        this.content = content;
        this.courseIncome = courseIncome;
        this.typeId = typeId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCourseIncome() {
        return courseIncome;
    }

    public void setCourseIncome(String courseIncome) {
        this.courseIncome = courseIncome;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }
}
