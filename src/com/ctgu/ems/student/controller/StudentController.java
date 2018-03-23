package com.ctgu.ems.student.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ctgu.ems.pojo.Student;
import com.ctgu.ems.student.service.StudentService;
import com.ctgu.ems.util.EMSContants;


/**
 * @ʱ�䣺2018��1��5������9:11:56
 * @���ߣ��Ʋ���
 * @˵����
 */
@Controller
@RequestMapping("/student")
public class StudentController {
	@Resource
	private Student student;
	@Resource
	private StudentService studentServiceImpl;
	@RequestMapping("/login.do")
	@ResponseBody
	public int login(Student student) {
		student  = studentServiceImpl.getStudent(student);
		if (student == null) {
			return 0;
		}else {
			return 1;
		}
	}
	@RequestMapping("/toMain.do")
	public ModelAndView toMain(Student student,HttpSession session) {
		student  = studentServiceImpl.getStudent(student);
		session.setAttribute(EMSContants.STUDENT_SESSION, student);
		return new ModelAndView("main");
	}
	
	@RequestMapping("/outLogin.do")
	public ModelAndView outLogin(HttpServletRequest request) {
		request.getSession().removeAttribute(EMSContants.STUDENT_SESSION);
		return new ModelAndView("login");
	}
	@RequestMapping("/loginForm.do")
	public ModelAndView main1() {
		return new ModelAndView("login");
	}
}
