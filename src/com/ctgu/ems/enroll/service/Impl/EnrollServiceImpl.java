package com.ctgu.ems.enroll.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ctgu.ems.enroll.dao.EnrollMapper;
import com.ctgu.ems.enroll.service.EnrollService;
import com.ctgu.ems.pojo.Enroll;

/**
 * @时间：2018年1月11日下午3:20:41
 * @作者：黄博文
 * @说明：
 */
@Service
public class EnrollServiceImpl implements EnrollService{
	
	@Resource
	private EnrollMapper enrollMapper;
	/* (non-Javadoc)
	 * @see com.ctgu.ems.enroll.service.EnrollService#EnrollService(com.ctgu.ems.pojo.Enroll)
	 */
	@Override
	public void EnrollService(Enroll enroll) {
		// TODO Auto-generated method stub
		enrollMapper.insert(enroll);
		
		
	}
	
	

}
