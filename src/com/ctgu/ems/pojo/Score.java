package com.ctgu.ems.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@SuppressWarnings("serial")
@Component
public class Score implements Serializable{
	private Integer score;
	private String year;
	private String term;
	private String cname;
	private String credit;
	private String sid;
	
	/**
	 * @return the sid
	 */
	public String getSid() {
		return sid;
	}


	/**
	 * @param sid the sid to set
	 */
	public void setSid(String sid) {
		this.sid = sid;
	}


	public Integer getScore() {
		return score;
	}


	public void setScore(Integer score) {
		this.score = score;
	}


	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}


	public String getTerm() {
		return term;
	}


	public void setTerm(String term) {
		this.term = term;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getCredit() {
		return credit;
	}


	public void setCredit(String credit) {
		this.credit = credit;
	}


	@Override
	public String toString() {
		return "Score [score=" + score + ", year=" + year + ", term=" + term + ", cname=" + cname + ", credit=" + credit
				+ "]";
	}
	
	
	
}
