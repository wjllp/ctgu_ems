package com.ctgu.ems.course_select.service;

import java.util.List;

import com.ctgu.ems.pojo.Selectcourse;

/**
 * @ʱ�䣺2018��1��9������9:45:03
 * @���ߣ��Ʋ���
 * @˵����
 */
public interface SelectCourseService {
	String selectCourses(Selectcourse selectcourse);
	
	List<Selectcourse> alreadySelect(Selectcourse selectcourse);
	
	void cancelSelect(Selectcourse selectcourse);
}
