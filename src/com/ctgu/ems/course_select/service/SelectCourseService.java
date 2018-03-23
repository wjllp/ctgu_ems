package com.ctgu.ems.course_select.service;

import java.util.List;

import com.ctgu.ems.pojo.Selectcourse;

/**
 * @时间：2018年1月9日下午9:45:03
 * @作者：黄博文
 * @说明：
 */
public interface SelectCourseService {
	String selectCourses(Selectcourse selectcourse);
	
	List<Selectcourse> alreadySelect(Selectcourse selectcourse);
	
	void cancelSelect(Selectcourse selectcourse);
}
