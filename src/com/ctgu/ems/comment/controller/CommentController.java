package com.ctgu.ems.comment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ctgu.ems.comment.service.CommentService;
import com.ctgu.ems.pojo.Comment;
import com.ctgu.ems.pojo.CommentResult;
import com.ctgu.ems.pojo.Student;
import com.ctgu.ems.util.EMSContants;

@Controller
@RequestMapping("/comment")
public class CommentController {
	@Autowired
	@Qualifier("CommentService")
	private CommentService commentservice;
	
	@RequestMapping("Comment.do")
	public ModelAndView Comment(@RequestParam("sid")String sid){
		//查询已选课程，查找出所有老师
		System.out.println("评教学号："+sid);
	
		List<Comment> commentlist = commentservice.selectAllteacher(sid);
		System.out.println(commentlist);
		Map<String,Object> map = new HashMap<>();
		map.put("commentlist", commentlist);
		return new ModelAndView("comment/comment",map);
	}
	
	@RequestMapping("Comment_Submit.do")
	public ModelAndView CommentSubmit(CommentResult commentresult,HttpServletRequest request){
		System.out.println(commentresult);
		
		commentservice.updateComment(commentresult.getComment_id());
		commentservice.insertCommentResult(commentresult);
		Student student = (Student)request.getSession().getAttribute(EMSContants.STUDENT_SESSION);		
		List<Comment> commentlist = commentservice.selectAllteacher(student.getSid());
		System.out.println(commentlist);
		Map<String,Object> map = new HashMap<>();
		map.put("commentlist", commentlist);
		return new ModelAndView("comment/comment",map);
	}
}
