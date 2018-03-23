package com.ctgu.ems.score.service;

import java.util.List;

import com.ctgu.ems.pojo.Score;

public interface ScoreService {
	List<Score> selectBysid(String sid);
	
	List<Score>SearchByYearAndTerm(String sid,String year,String term);
	
	List<Score>SearchByYear(String sid,String year);
	
	List<Score>SearchByTerm(String sid,String term);
}
