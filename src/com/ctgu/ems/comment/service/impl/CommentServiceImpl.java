package com.ctgu.ems.comment.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ctgu.ems.comment.dao.CommentDao;
import com.ctgu.ems.comment.service.CommentService;
import com.ctgu.ems.pojo.Comment;
import com.ctgu.ems.pojo.CommentResult;

@Service("CommentService")
public class CommentServiceImpl implements CommentService{
	@Resource
	private CommentDao commentdao;
	
	public List<Comment> selectAllteacher(String sid){
		return commentdao.selectAllteacher(sid);
	}

	@Override
	public void insertCommentResult(CommentResult commentresult) {
		// TODO Auto-generated method stub
		commentdao.insertCommentResult(commentresult);
	}

	@Override
	public void updateComment(String comment_id) {
		// TODO Auto-generated method stub
		commentdao.updateComment(comment_id);
	}
}
