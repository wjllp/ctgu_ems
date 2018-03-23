package com.ctgu.ems.score.controller;

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

import com.ctgu.ems.pojo.Score;
import com.ctgu.ems.pojo.Student;
import com.ctgu.ems.score.service.ScoreService;
import com.ctgu.ems.util.EMSContants;

@Controller
@RequestMapping("/score")
public class ScoreController {
	@Autowired
	@Qualifier("ScoreService")
	private ScoreService scoreservice;
	
	@RequestMapping("ShowScore.do")
	public ModelAndView SelectScore(@RequestParam("sid")String sid){
		List<Score> scorelist = scoreservice.selectBysid(sid);
		System.out.println("Score:" + scorelist);
		Map<String,Object> map = new HashMap<>();
		map.put("scorelist", scorelist);
		return new ModelAndView("score/showscore",map);
	}
	
	@RequestMapping("Search.do")
	public ModelAndView Search(@RequestParam("year")String year,@RequestParam("term")String term,HttpServletRequest request){
		Student student = (Student)request.getSession().getAttribute(EMSContants.STUDENT_SESSION);
		String sid = student.getSid();
		System.out.println("学号"+sid);
		List<Score> scorelist = null;
		if (year.equals("0")&& !term.equals("0")){		//按学期查找
			System.out.println("按学期查找");
			scorelist = scoreservice.SearchByTerm(sid, term);
		}
		else if(!year.equals("0") && term.equals("0")){		//按学年查找
			System.out.println("按学年查找");
			scorelist = scoreservice.SearchByYear(sid, year);
		}
		else if(!year.equals("0") && !term.equals("0")){	//按学年和学期查找
			System.out.println("按学年和学期查找");
			scorelist = scoreservice.SearchByYearAndTerm(sid, year, term);
		}
		else if(year.equals("0") && term.equals("0")){		//按学号查找
			System.out.println("按学号查找");
			scorelist = scoreservice.selectBysid(sid);
		}

		Map<String,Object> map = new HashMap<>();
		map.put("scorelist", scorelist);
		return new ModelAndView("score/showscore",map);
	}
}
