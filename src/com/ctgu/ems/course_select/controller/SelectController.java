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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.ctgu.ems.course_select.service.CourseService;
import com.ctgu.ems.course_select.service.SelectCourseService;

import com.ctgu.ems.pojo.Classes;
import com.ctgu.ems.pojo.Course;
import com.ctgu.ems.pojo.Selectcourse;

/**
 * @ʱ�䣺2018��1��9������8:59:13
 * @���ߣ��Ʋ���
 * @˵����
 */
@Controller
@RequestMapping("/select_course")
public class SelectController {
	
	@Resource
	private SelectCourseService selectCourseServiceImpl;
	@Resource
	private Classes classes;
	@Resource
	private CourseService courseServiceImpl;
	@Resource
	private Course course;
	private List<Selectcourse> listSelectCourse;
	/**
	 * ����ѡ�ε��������ת������Ӧ�ĳɹ���ʧ��ҳ�棬ѡ�ξ�����ж��߼���Service����
	 * @param selectcourse
	 * @param courseURL
	 * @param model
	 * @return
	 */
	@RequestMapping("/selectCourses.do")
	 public ModelAndView selectCourse(Selectcourse selectcourse,@RequestParam String courseURL,Model model ) {
		classes = courseServiceImpl.getClassById(selectcourse.getClassid());
		course = courseServiceImpl.getCourseByName(classes.getCname());
		String flag = selectCourseServiceImpl.selectCourses(selectcourse);
		model.addAttribute("select_state", flag);
		model.addAttribute("course_url", courseURL);
		model.addAttribute("cname",classes.getCname());
		model.addAttribute("course_profession", course.getProfession());
		model.addAttribute("course_learn",course.getLearn());
		return new ModelAndView("course_select/selectStatus");
		
	}
	@RequestMapping("/already_select.do")
	public ModelAndView getAlreadySelect(Selectcourse selectcourse) {
		Map<String, Object> map = new HashMap<>();
		listSelectCourse = selectCourseServiceImpl.alreadySelect(selectcourse);
		map.put("listCourse", listSelectCourse);
		return new ModelAndView("course_select/select_course_already",map);
	}
	@RequestMapping("/cancel_selectCourse.do") 
	public ModelAndView cancel_selectCourse(Selectcourse selectcourse,RedirectAttributes rAttributes) {
		selectCourseServiceImpl.cancelSelect(selectcourse);
		rAttributes.addAttribute("sid", selectcourse.getSid());
		rAttributes.addFlashAttribute("msg", "�˿γɹ���");
		return new ModelAndView(new RedirectView("already_select.do"));
	}
}
