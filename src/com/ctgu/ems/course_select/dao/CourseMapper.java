package com.ctgu.ems.course_select.dao;

import java.util.List;

import com.ctgu.ems.pojo.Course;

public interface CourseMapper {
    int deleteByPrimaryKey(String cid);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(String cid);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);
    
    List<Course> getAllCourse(Course course);
    
    Course selectByName(String name);
}