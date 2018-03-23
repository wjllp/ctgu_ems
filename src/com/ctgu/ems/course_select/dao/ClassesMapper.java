package com.ctgu.ems.course_select.dao;

import java.util.List;

import com.ctgu.ems.pojo.Classes;

public interface ClassesMapper {
    int deleteByPrimaryKey(String classid);

    int insert(Classes record);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(String classid);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);
    
    List<Classes> selectAllByName(Classes classes);
}