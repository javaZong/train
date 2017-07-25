package com.train.domain;

import com.fasterxml.jackson.annotation.JsonInclude;

import java.util.List;

/**
 * 课程大类
 * Created by java_zong on 2017/7/2.
 */
public class Type{
    //id
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private Integer id;
    //大类名称
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String typeName;

    @JsonInclude(JsonInclude.Include.NON_NULL)
    private String memo;
    /**
     * 课程列表
     */
    @JsonInclude(JsonInclude.Include.NON_NULL)
    private List<Course> listCourse;

    public Type(Integer id, String typeName,String memo) {
        this.id = id;
        this.typeName = typeName;
        this.memo=memo;
    }

    public Type( String typeName,String memo) {
        this.typeName = typeName;
        this.memo=memo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public List<Course> getListCourse() {
        return listCourse;
    }

    public void setListCourse(List<Course> listCourse) {
        this.listCourse = listCourse;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}
