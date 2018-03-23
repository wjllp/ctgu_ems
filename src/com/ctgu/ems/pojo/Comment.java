package com.ctgu.ems.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component
public class Comment implements Serializable{
	private String classid;
	private String cname;
	private String tname;
	private Integer status;
	private Integer comment_id;
	private String sid;

	public String getClassid() {
		return classid;
	}


	public void setClassid(String classid) {
		this.classid = classid;
	}


	public String getCname() {
		return cname;
	}


	public void setCname(String cname) {
		this.cname = cname;
	}


	public String getTname() {
		return tname;
	}


	public void setTname(String tname) {
		this.tname = tname;
	}


	public int getStatus() {
		return status;
	}



	public Integer getComment_id() {
		return comment_id;
	}


	public void setComment_id(Integer comment_id) {
		this.comment_id = comment_id;
	}


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


	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Comment [classid=" + classid + ", cname=" + cname + ", tname=" + tname + ", status=" + status
				+ ", comment_id=" + comment_id + "]";
	}
	
}
