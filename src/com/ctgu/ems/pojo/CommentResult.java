package com.ctgu.ems.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@SuppressWarnings("serial")
@Component
public class CommentResult implements Serializable{
	private int tip_1;
	private int tip_2;
	private int tip_3;
	private int tip_4;
	private int tip_5;
	private int SuitTeach;
	private String TeacherGood;
	private String NeedChange;
	private String Comment_id;
	
	public int getTip_1() {
		return tip_1;
	}

	public void setTip_1(int tip_1) {
		this.tip_1 = tip_1;
	}

	public int getTip_2() {
		return tip_2;
	}

	public void setTip_2(int tip_2) {
		this.tip_2 = tip_2;
	}

	public int getTip_3() {
		return tip_3;
	}

	public void setTip_3(int tip_3) {
		this.tip_3 = tip_3;
	}

	public int getTip_4() {
		return tip_4;
	}

	public void setTip_4(int tip_4) {
		this.tip_4 = tip_4;
	}

	public int getTip_5() {
		return tip_5;
	}

	public void setTip_5(int tip_5) {
		this.tip_5 = tip_5;
	}

	public int getSuitTeach() {
		return SuitTeach;
	}

	public void setSuitTeach(int suitTeach) {
		SuitTeach = suitTeach;
	}

	public String getTeacherGood() {
		return TeacherGood;
	}

	public void setTeacherGood(String teacherGood) {
		TeacherGood = teacherGood;
	}

	public String getNeedChange() {
		return NeedChange;
	}

	public void setNeedChange(String needChange) {
		NeedChange = needChange;
	}

	public String getComment_id() {
		return Comment_id;
	}

	public void setComment_id(String comment_id) {
		Comment_id = comment_id;
	}

	@Override
	public String toString() {
		return "CommentResult [tip_1=" + tip_1 + ", tip_2=" + tip_2 + ", tip_3=" + tip_3 + ", tip_4=" + tip_4
				+ ", tip_5=" + tip_5 + ", SuitTeach=" + SuitTeach + ", TeacherGood=" + TeacherGood + ", NeedChange="
				+ NeedChange + ", Comment_id=" + Comment_id + "]";
	}
	
	
}
