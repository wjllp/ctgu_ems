package com.ctgu.ems.student.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ctgu.ems.pojo.Student;
import com.ctgu.ems.student.dao.StudentMapper;
import com.ctgu.ems.student.service.StudentService;

/**
 * @ʱ�䣺2018��1��5������9:44:04
 * @���ߣ��Ʋ���
 * @˵����
 */
@Service
public class StudentServiceImpl implements StudentService {

	/* (non-Javadoc)
	 * @see com.ctgu.ems.student.service.StudentService#getStudent(java.lang.String)
	 */
	@Resource
	private StudentMapper studentMapper;
	@Override
	public Student getStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.selectBySidAndPassword(student);
	}

}
