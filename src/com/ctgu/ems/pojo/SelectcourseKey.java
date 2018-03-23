package com.ctgu.ems.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;
@Component
@SuppressWarnings("serial")
public class SelectcourseKey implements Serializable{
    private String classid;

    private String sid;

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }
}