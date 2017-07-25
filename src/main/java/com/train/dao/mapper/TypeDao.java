package com.train.dao.mapper;

import com.train.domain.Type;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by java_zong on 2017/7/4.
 */
public interface TypeDao {

    /**
     * 添加课程大类
     *
     * @param typeName
     * @param memo
     */
    //@Insert("insert into type (`name`,`memo`) values(#{typename},#{memo})")
    @Insert("insert into type (`t_name`,`memo`) values(#{typeName},#{memo})")
    int addType(@Param("typeName") String typeName, @Param("memo") String memo);

    @Select("select t.id,t.t_name as name ,t.memo from type as t where 1=1")
    List<Type> getTypeList();

    @Select("select t.t_name as name,t.memo from type as t where 1=1 and t.id=#{typeid}")
    Type show(Integer typeid);

    @Update("update type set t_name=#{typeName}, memo=#{memo} where id=#{typeid}")
    int update(@Param("typeid") Integer typeid, @Param("typeName") String typeName, @Param("memo") String memo);

    @Delete("delete from type where id=#{typeid}")
    int delete(Integer typeid);
}
