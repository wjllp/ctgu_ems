package com.ctgu.ems.course_select.service.impl;

import java.util.List;
import java.util.Calendar;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ctgu.ems.course_select.dao.ClassesMapper;
import com.ctgu.ems.course_select.dao.CourseMapper;
import com.ctgu.ems.course_select.service.CourseService;
import com.ctgu.ems.pojo.Classes;
import com.ctgu.ems.pojo.Course;

/**
 * @ʱ�䣺2018��1��5������7:54:12
 * @���ߣ��Ʋ���
 * @˵����
 */
@Service
public class CourseServiceImpl implements CourseService {

	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.CourseService#getAllCourse(com.ctgu.ems.pojo.Course)
	 */
	@Resource
	private CourseMapper courseMapper;
	@Resource
	private ClassesMapper classesMapper;
	private static final String []a = {"��һѧ��","���ѧ��","����ѧ��","����ѧ��"}; 
	@Override
	public List<Course> getAllCourseService(Course course,int year) {
		// TODO Auto-generated method stub
		int now_year = Calendar.getInstance().get(Calendar.YEAR);
		int now_month = Calendar.getInstance().get(Calendar.MONTH)+1;
		System.out.println(now_month);
		if (now_month == 1) {
			course.setTerm("����ѧ��");
			course.setGrade(a[now_year-year-1]);
		}else if(now_month == 6){
			course.setTerm("�＾ѧ��");
			course.setGrade(a[now_year-year]);
		}
		return courseMapper.getAllCourse(course);
	}
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.CourseService#getCourseByName(java.lang.String)
	 */
	@Override
	public Course getCourseByName(String name) {
		// TODO Auto-generated method stub
		return courseMapper.selectByName(name);
	}
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.CourseService#getAllClass(com.ctgu.ems.pojo.Classes)
	 */
	@Override
	public List<Classes> getAllClass(Classes classes) {
		// TODO Auto-generated method stub
		return classesMapper.selectAllByName(classes);
	}
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.CourseService#getAllCourseByCommonalityService(com.ctgu.ems.pojo.Course)
	 */
	@Override
	public List<Course> getAllCourseByCommonalityService(Course course) {
		// TODO Auto-generated method stub
		return courseMapper.getAllCourse(course);
	}
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.CourseService#getClassById(java.lang.String)
	 */
	@Override
	public Classes getClassById(String classid) {
		// TODO Auto-generated method stub
		return classesMapper.selectByPrimaryKey(classid);
	}
	

}
