package com.ctgu.ems.course_select.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.ctgu.ems.course_select.service.CourseService;
import com.ctgu.ems.pojo.Classes;
import com.ctgu.ems.pojo.Course;

/**
 * @时间：2018年1月5日下午5:01:18
 * @作者：黄博文
 * @说明：
 */
@Controller
@RequestMapping("/show_course")
public class ShowController {
	@Resource
	private Course course;
	@Resource
	private List<Classes> classesList;
	private List<Course> cList;
	@Resource
	private CourseService courseServiceImpl;
	
	
	/**
	 * 负责展示所有可以选的公共选修课
	 * @param course
	 * @param model
	 * @return
	 */
	@RequestMapping("getAllCourseByCommonality.do")
	public ModelAndView getAllCourseByCommonality(Course course,Model model) {
		cList = courseServiceImpl.getAllCourseByCommonalityService(course);
		model.addAttribute("list", cList);
		return new ModelAndView("course_show/showCourseByCommonality");
	}
	/**
	 * 负责展示所有可以选的专业必修课或专业选修课
	 * @param course
	 * @param model
	 * @return
	 */
	@RequestMapping("/getAllCourse.do")
	public ModelAndView getAllCourse(Course course,@RequestParam int year,Model model) {
		Map<String, String> map = new HashMap<>();
		cList = courseServiceImpl.getAllCourseService(course,year);
		model.addAttribute("list", cList);
		if(course.getLearn().equals("是"))
			map.put("state", "必修");
		if(course.getLearn().equals("否"))
			map.put("state", "选修");
		return new ModelAndView("course_show/showCourse",map);
	}
	/**
	 * 负责展示所有可以选的通识核心课程
	 * @param course
	 * @param model
	 * @return
	 */
	@RequestMapping("/getAllCourseByTogether.do")
	public ModelAndView getAllCourseByTogether(Course course,@RequestParam int year,Model model) {
		cList = courseServiceImpl.getAllCourseService(course, year);
		model.addAttribute("list", cList);
		return new ModelAndView("course_show/showCourseByTogether");
	}
	/**
	 * 负责展示当前所选的公共选修课的授课信息
	 * @param course
	 * @param model
	 * @return
	 */
	 @RequestMapping("classMsgByCommonality.do")
     public ModelAndView getClassMsgByCommonality(Classes classes) {
		 Map<String, Object> map = new HashMap<>();
		 classesList = courseServiceImpl.getAllClass(classes);
		 course.setProfession("公共类");
		 course.setLearn("否");
		 cList = courseServiceImpl.getAllCourseByCommonalityService(course);
		 //System.out.println(cList);
		 map.put("list",cList);
		 map.put("list1", classesList);
		 return new ModelAndView("course_show/showCourseByCommonality",map);
     }
	/**
	 * 负责展示当前所选的专业必修课或专业选修课的授课信息
	 * @param course
	 * @param model
	 * @return
	 */
	@RequestMapping("/classMsg.do")
	public ModelAndView getClassMsg(Classes classes,Course course ,@RequestParam int year,Model model) {
		Map<String , String> map = new HashMap<>();
		classesList = courseServiceImpl.getAllClass(classes);
		/*course.setLearn(courseServiceImpl.getCourseByName(classes.getCname()).getLearn());
		course.setProfession(classes.getCollege());*/
		//System.out.println(course);
		cList = courseServiceImpl.getAllCourseService(course, year);
		model.addAttribute("list", cList);
		model.addAttribute("list1", classesList);
		if(course.getLearn().equals("是"))
			map.put("state","必修" );
		if(course.getLearn().equals("否"))
			map.put("state","选修" );
		return new ModelAndView("course_show/showCourse",map);
	}
	/**
	 * 负责展示当前所选的通识核心课程的授课信息
	 * @param course
	 * @param model
	 * @return
	 */
	@RequestMapping("/classMsgByTogether.do")
	public ModelAndView getClassMsgByTogether(Classes classes,Course course,@RequestParam int year,Model model) {
		
		classesList = courseServiceImpl.getAllClass(classes);
		cList = courseServiceImpl.getAllCourseService(course, year);
		model.addAttribute("list", cList);
		model.addAttribute("list1", classesList);
		return new ModelAndView("course_show/showCourseByTogether");
	}
}
