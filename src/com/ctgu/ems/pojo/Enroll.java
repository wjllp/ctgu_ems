package com.ctgu.ems.pojo;

import org.springframework.stereotype.Component;

/**
 * @时间：2018年1月11日下午3:04:01
 * @作者：黄博文
 * @说明：
 */
@SuppressWarnings("serial")
@Component
public class Enroll {
	private Integer enroll_id;
	
	private String sname;
	
	private String identify;
	
	private String type;

	/**
	 * @return the enroll_id
	 */
	public Integer getEnroll_id() {
		return enroll_id;
	}

	/**
	 * @param enroll_id the enroll_id to set
	 */
	public void setEnroll_id(Integer enroll_id) {
		this.enroll_id = enroll_id;
	}

	/**
	 * @return the sname
	 */
	public String getSname() {
		return sname;
	}

	/**
	 * @param sname the sname to set
	 */
	public void setSname(String sname) {
		this.sname = sname;
	}

	/**
	 * @return the identify
	 */
	public String getIdentify() {
		return identify;
	}

	/**
	 * @param identify the identify to set
	 */
	public void setIdentify(String identify) {
		this.identify = identify;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Enroll [enroll_id=" + enroll_id + ", sname=" + sname + ", identify=" + identify + ", type=" + type
				+ "]";
	}
	
	

}
