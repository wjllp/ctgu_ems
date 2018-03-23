package com.ctgu.ems.course_select.service;

import java.util.List;

import com.ctgu.ems.pojo.Classes;
import com.ctgu.ems.pojo.Course;

/**
 * @时间：2018年1月5日下午7:49:49
 * @作者：黄博文
 * @说明：
 */
public interface CourseService {
	List<Course> getAllCourseService(Course course,int year);
	List<Course> getAllCourseByCommonalityService(Course course);
	Course getCourseByName(String name);
	List<Classes> getAllClass(Classes classes);
	Classes getClassById(String classid);
}
