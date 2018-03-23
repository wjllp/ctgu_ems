package com.ctgu.ems.comment.service;

import java.util.List;


import com.ctgu.ems.pojo.Comment;
import com.ctgu.ems.pojo.CommentResult;

public interface CommentService {
	List<Comment> selectAllteacher(String sid);
	
	void insertCommentResult(CommentResult commentresult);
	
	void updateComment(String comment_id);
}
