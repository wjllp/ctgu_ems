package com.ctgu.ems.score.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ctgu.ems.pojo.Score;
import com.ctgu.ems.score.dao.ScoreDao;
import com.ctgu.ems.score.service.ScoreService;

@Service("ScoreService")
public class ScoreServiceImpl implements ScoreService{
	@Resource
	private ScoreDao scoredao;
	
	public List<Score> selectBysid(String sid){
		return scoredao.selectBysid(sid);
	}

	@Override
	public List<Score> SearchByYearAndTerm(String sid, String year, String term) {
		// TODO Auto-generated method stub
		return scoredao.SearchByYearAndTerm(sid, year, term);
	}

	@Override
	public List<Score> SearchByYear(String sid, String year) {
		// TODO Auto-generated method stub
		System.out.println("进来了服务层");
		return scoredao.SearchByYear(sid, year);
	}

	@Override
	public List<Score> SearchByTerm(String sid, String term) {
		// TODO Auto-generated method stub
		return scoredao.SearchByTerm(sid, term);
	}
}
