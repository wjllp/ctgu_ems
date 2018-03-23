package com.ctgu.ems.course_select.service;

import java.util.List;

import com.ctgu.ems.pojo.Classes;
import com.ctgu.ems.pojo.Course;

/**
 * @ʱ�䣺2018��1��5������7:49:49
 * @���ߣ��Ʋ���
 * @˵����
 */
public interface CourseService {
	List<Course> getAllCourseService(Course course,int year);
	List<Course> getAllCourseByCommonalityService(Course course);
	Course getCourseByName(String name);
	List<Classes> getAllClass(Classes classes);
	Classes getClassById(String classid);
}
