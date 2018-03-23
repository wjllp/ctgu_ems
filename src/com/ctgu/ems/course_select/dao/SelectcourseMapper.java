package com.ctgu.ems.course_select.dao;

import java.util.List;

import com.ctgu.ems.pojo.Selectcourse;
import com.ctgu.ems.pojo.SelectcourseKey;

public interface SelectcourseMapper {
    int deleteByPrimaryKey(SelectcourseKey key);

    int insert(Selectcourse record);

    int insertSelective(Selectcourse record);

    Selectcourse selectByPrimaryKey(SelectcourseKey key);

    int updateByPrimaryKeySelective(Selectcourse record);

    int updateByPrimaryKey(Selectcourse record);
    
    List<Selectcourse> selectCourse(String sid);
}