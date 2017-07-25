package com.train.dao.mapper;

import com.train.dao.sqlprovider.CourseSqlProvider;
import com.train.domain.Course;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by java_zong on 2017/7/11.
 */
public interface CourseDao {

    /**
     * 添加课程
     *
     * @param courseName
     * @param content
     * @param courseIncome
     * @param typeId
     */
    @Insert("insert into course (`c_name`,`content`,`income`,`type_id`) values(#{courseName},#{content},#{courseIncome},#{typeId})")
    void addCourse(@Param("courseName") String courseName, @Param("content") String content, @Param("courseIncome") String courseIncome, @Param("typeId") Integer typeId);

    @SelectProvider(method = "getTotal", type = CourseSqlProvider.class)
    Integer getTotal(Integer typeid);

    @SelectProvider(method = "getCourseList", type = CourseSqlProvider.class)
    List<Course> getCourseList(@Param("typeid") Integer typeid, @Param("offset") Integer offset, @Param("pageSize") Integer pageSize);

    @Select("select c.id, c.c_name as courseName, c.content, c.income as courseIncome, c.type_id as typeId from course as c where c.id=#{courseid} ")
    Course getCourse(Integer courseid);

//    @Update("update course set name=#{courseName}, content=#{content}, income=#{courseIncome}, typeid=#{typeid} where id=#{courseid} ")
    @UpdateProvider(method = "updateCourse", type = CourseSqlProvider.class)
    int updateCourse(@Param("courseid") Integer courseid, @Param("courseName") String courseName, @Param("content") String content, @Param("courseIncome") String courseIncome, @Param("typeid") Integer typeid);

    @Delete(" delete from course where id=#{courseid}")
    int delete(Integer courseid);
}
