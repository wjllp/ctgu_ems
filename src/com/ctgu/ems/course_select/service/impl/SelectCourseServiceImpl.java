package com.ctgu.ems.course_select.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ctgu.ems.course_select.dao.ClassesMapper;
import com.ctgu.ems.course_select.dao.SelectcourseMapper;
import com.ctgu.ems.course_select.service.SelectCourseService;
import com.ctgu.ems.pojo.Classes;
import com.ctgu.ems.pojo.Selectcourse;


/**
 * @时间：2018年1月9日下午9:47:43
 * @作者：黄博文
 * @说明：
 */
@Service
public class SelectCourseServiceImpl implements SelectCourseService{

	private List<Selectcourse> listCourse;
	@Resource
	private SelectcourseMapper selectcourseMapper;
	@Resource
	private ClassesMapper classesMapper;
	@Resource
	private Classes classes;
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.SelectCourseService#selectCourses(com.ctgu.ems.pojo.Selectcourse)
	 */
	@Override
	public String selectCourses(Selectcourse selectcourse) {
		// TODO Auto-generated method stub
		listCourse = selectcourseMapper.selectCourse(selectcourse.getSid());
		classes = classesMapper.selectByPrimaryKey(selectcourse.getClassid());
		if (classes.getNumber()<classes.getConfine()) {
			if (listCourse.size() == 0) {
				selectcourse.setEweek(classes.getEweek());
				selectcourse.setSweek(classes.getSweek());
				selectcourse.setTname(classes.getTname());
				selectcourse.setCname(classes.getCname());
				selectcourse.setClassroom(classes.getClassroom());
				selectcourseMapper.insert(selectcourse);
				return "选课成功";
			}else {
				boolean flag = true;
				/*int []a = new int[1000];
				boolean flag = true;
 				for (int i = 0,j= 0; i < listCourse.size(); i++,j+=2) {
					int time1 = listCourse.get(i).getTime()%100;
					int time2 = listCourse.get(i).getTime()/100;
					a[j] = time1;
					a[j+1]=time2;
				}
 				for(int k = 0;k<a.length;k++)
 				{
 					if (a[k]!=0) {
 						int Ntime1 = selectcourse.getTime()%100;
 						int Ntime2 = selectcourse.getTime()/100;
 						if (a[k]==Ntime1||a[k]==Ntime2) {
							flag = false;
						}
					}
 				}*/
 				/*if (flag) {
 					System.out.println("进来了");
					selectcourse.setEweek(classes.getEweek());
					selectcourse.setSweek(classes.getSweek());
					selectcourse.setTname(classes.getTname());
					selectcourse.setCname(classes.getCname());
					selectcourse.setClassroom(classes.getClassroom());
					selectcourseMapper.insert(selectcourse);
					return "选课成功";
				}*/
				for (int i = 0; i < listCourse.size(); i++) {
					int time1 = listCourse.get(i).getTime()%100;
					int time2 = listCourse.get(i).getTime()/100;
					int Ntime1 = selectcourse.getTime()%100;
					int Ntime2 = selectcourse.getTime()/100;
					if (time2==0) {
						if (time1==Ntime1||time1==Ntime2) {
							flag = false;
						}
						
					}else if (time2!=0) {
						if (time1==Ntime1||time1==Ntime2||time2==Ntime1||time2==Ntime2) {
							flag = false;
						}
					}
				}
				if (flag) {
					selectcourse.setEweek(classes.getEweek());
					selectcourse.setSweek(classes.getSweek());
					selectcourse.setTname(classes.getTname());
					selectcourse.setCname(classes.getCname());
					selectcourse.setClassroom(classes.getClassroom());
					selectcourseMapper.insert(selectcourse);
					return "选课成功";
				}
				return  "时间冲突，选课失败";
			}
		}else {
			return  "人数已满,选课失败";
		}
		
		
		
	}
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.SelectCourseService#alreadySelect(com.ctgu.ems.pojo.Selectcourse)
	 */
	@Override
	public List<Selectcourse> alreadySelect(Selectcourse selectcourse) {
		// TODO Auto-generated method stub
		 
		return selectcourseMapper.selectCourse(selectcourse.getSid());
	}
	/* (non-Javadoc)
	 * @see com.ctgu.ems.course_select.service.SelectCourseService#cancelSelect(com.ctgu.ems.pojo.Selectcourse)
	 */
	@Override
	public void cancelSelect(Selectcourse selectcourse) {
		// TODO Auto-generated method stub
		selectcourseMapper.deleteByPrimaryKey(selectcourse);
	}

}
