package com.train.service;

import com.train.dao.mapper.TypeDao;
import com.train.domain.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by java_zong on 2017/7/4.
 */
@Service
public class TypeService {

    @Autowired
    private TypeDao typeDao;


    public boolean addType(String typeName, String memo) {
        int i = typeDao.addType(typeName, memo);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    public List<Type> getTypeList() {

        return typeDao.getTypeList();
    }

    /**
     * 课程大类详情
     *
     * @param typeid
     * @return
     */
    public Type show(Integer typeid) {
        return typeDao.show(typeid);
    }

    /**
     * 更新课程大类信息
     *
     * @param typeid
     * @param typeName
     * @param memo
     * @return
     */
    public boolean update(Integer typeid, String typeName, String memo) {
        int i = typeDao.update(typeid, typeName, memo);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 删除
     * @param typeid
     * @return
     */
    public boolean delete(Integer typeid) {
        int i = typeDao.delete(typeid);
        if (i > 0) {
            return true;
        } else {
            return false;
        }
    }
}
