package com.ctgu.ems.comment.dao;

import java.util.List;

import com.ctgu.ems.pojo.Comment;
import com.ctgu.ems.pojo.CommentResult;

public interface CommentDao {
	public List<Comment> selectAllteacher(String sid);
	
	public void insertCommentResult(CommentResult commentresult);
	
	public void updateComment(String comment_id);
}
