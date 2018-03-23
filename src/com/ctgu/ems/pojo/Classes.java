package com.ctgu.ems.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component
public class Classes implements Serializable{
    private String classid;

    private String cname;

    private String tname;

    private String college;

    private String classroom;

    private Integer sweek;

    private Integer eweek;

    private Integer time;

    private Integer confine;

    private Integer number;

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

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
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

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public Integer getConfine() {
        return confine;
    }

    public void setConfine(Integer confine) {
        this.confine = confine;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Classes [classid=" + classid + ", cname=" + cname + ", tname=" + tname + ", college=" + college
				+ ", classroom=" + classroom + ", sweek=" + sweek + ", eweek=" + eweek + ", time=" + time + ", confine="
				+ confine + ", number=" + number + "]";
	}
    
}