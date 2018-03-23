package com.ctgu.ems.enroll.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.ctgu.ems.enroll.service.EnrollService;
import com.ctgu.ems.pojo.Enroll;


@Controller
@RequestMapping("/enroll")
public class EnrollController extends HttpServlet{
	
	@Resource
	private EnrollService enrollServiceImpl;
	
	
	
	@RequestMapping("toEnroll.do")
	public ModelAndView toEnroll(){
		return new ModelAndView("enroll/enroll_english");
		
	}
	
	@RequestMapping("/checkEroll.do")
	public ModelAndView checkEroll(Enroll enroll){
		enrollServiceImpl.EnrollService(enroll);
		return new ModelAndView("enroll/enroll_success");
		
	}
}
