package com.ctgu.ems.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component
@SuppressWarnings("serial")
public class Selectcourse extends SelectcourseKey implements Serializable{
    private Integer time;

    private String tname;

    private String cname;

    private Integer sweek;

    private Integer eweek;

    private String classroom;

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public Integer getSweek() {
        return sweek;
    }

    public void setSweek(Integer sweek) {
        this.sweek = sweek;
    }

    public Integer getEweek() {
        return eweek;
    }

    public void setEweek(Integer eweek) {
        this.eweek = eweek;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Selectcourse [sid="+getSid()+"classid"+getClassid()+",time=" + time + ", tname=" + tname + ", cname=" + cname + ", sweek=" + sweek + ", eweek="
				+ eweek + ", classroom=" + classroom + "]";
	}
    
}