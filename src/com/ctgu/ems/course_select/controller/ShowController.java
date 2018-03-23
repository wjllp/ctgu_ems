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
 * @ʱ�䣺2018��1��5������5:01:18
 * @���ߣ��Ʋ���
 * @˵����
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
	 * ����չʾ���п���ѡ�Ĺ���ѡ�޿�
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
	 * ����չʾ���п���ѡ��רҵ���޿λ�רҵѡ�޿�
	 * @param course
	 * @param model
	 * @return
	 */
	@RequestMapping("/getAllCourse.do")
	public ModelAndView getAllCourse(Course course,@RequestParam int year,Model model) {
		Map<String, String> map = new HashMap<>();
		cList = courseServiceImpl.getAllCourseService(course,year);
		model.addAttribute("list", cList);
		if(course.getLearn().equals("��"))
			map.put("state", "����");
		if(course.getLearn().equals("��"))
			map.put("state", "ѡ��");
		return new ModelAndView("course_show/showCourse",map);
	}
	/**
	 * ����չʾ���п���ѡ��ͨʶ���Ŀγ�
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
	 * ����չʾ��ǰ��ѡ�Ĺ���ѡ�޿ε��ڿ���Ϣ
	 * @param course
	 * @param model
	 * @return
	 */
	 @RequestMapping("classMsgByCommonality.do")
     public ModelAndView getClassMsgByCommonality(Classes classes) {
		 Map<String, Object> map = new HashMap<>();
		 classesList = courseServiceImpl.getAllClass(classes);
		 course.setProfession("������");
		 course.setLearn("��");
		 cList = courseServiceImpl.getAllCourseByCommonalityService(course);
		 //System.out.println(cList);
		 map.put("list",cList);
		 map.put("list1", classesList);
		 return new ModelAndView("course_show/showCourseByCommonality",map);
     }
	/**
	 * ����չʾ��ǰ��ѡ��רҵ���޿λ�רҵѡ�޿ε��ڿ���Ϣ
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
		if(course.getLearn().equals("��"))
			map.put("state","����" );
		if(course.getLearn().equals("��"))
			map.put("state","ѡ��" );
		return new ModelAndView("course_show/showCourse",map);
	}
	/**
	 * ����չʾ��ǰ��ѡ��ͨʶ���Ŀγ̵��ڿ���Ϣ
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
