package com.train.dao.sqlprovider;

import org.apache.commons.lang3.StringUtils;

import java.util.Map;

/**
 * Created by java_zong on 2017/7/17.
 */
public class CourseSqlProvider {

    /**
     * 根据课程大类获取课程总数
     *
     * @param typeid
     * @return
     */
    public static String getTotal(Integer typeid) {
        StringBuffer sql = new StringBuffer();
        sql.append("select count(c.id) from course as c where 1=1 ");
        if (typeid != null && typeid > 0) {
            sql.append(" and c.type_id =").append(typeid);
        }
        return sql.toString();
    }


    /**
     * 获取课程列表
     *
     * @param map
     * @return
     */
    public static String getCourseList(Map<String, Object> map) {
        StringBuffer sql = new StringBuffer();
        sql.append("select c.id, c.c_name as courseName, c.content, c.income,c.type_id as typeId from course as c where 1=1 ");
        Object typeid = map.get("typeid");
        Object offset = map.get("offset");
        Object pageSize = map.get("pageSize");
        if (typeid != null) {
            sql.append(" and c.type_id = ").append(typeid);
        }
        sql.append(" limit ").append(offset).append(",").append(pageSize);
        return sql.toString();
    }

    public static String updateCourse(Map<String, Object> map) {
        Object courseid = map.get("courseid");
        String name = String.valueOf(map.get("courseName"));
        String content = String.valueOf(map.get("content"));
        String income = String.valueOf(map.get("courseIncome"));
        Integer typeid = (Integer) map.get("typeid");
        StringBuffer sql = new StringBuffer();
        sql.append("update course set ");
        if (StringUtils.isNotBlank(name)) {
            sql.append("c_name = '").append(name).append("'");
        }
        if (StringUtils.isNotBlank(content)) {
            sql.append(", content='").append(content).append("'");
        }
        if (StringUtils.isNotBlank(income)) {
            sql.append(", income='").append(income).append("'");
        }
        if (typeid != null && typeid >= 0) {
            sql.append(", type_id=").append(typeid);
        }
        sql.append(" where id=").append(courseid);
        return sql.toString();

    }
}
