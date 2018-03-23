package com.ctgu.ems.score.dao;

import java.util.List;

import com.ctgu.ems.pojo.Score;

public interface ScoreDao {
	public List<Score> selectBysid(String sid);
	
	public List<Score> SearchByYearAndTerm(String sid, String year, String term);
	
	public List<Score> SearchByYear(String sid, String year);
	
	public List<Score> SearchByTerm(String sid, String term);
}
