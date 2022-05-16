package com.potenter.memo.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.potenter.memo.model.Post;

@Repository	
public interface PostDAO {
	
	public int insertPost(
			@Param("userId") int userId, 
			@Param("subject") String subject, 
			@Param("content") String content,
			@Param("filePath") String filePath);
	
	public List<Post> selectPostList(@Param("userId") int userId);
	
	public Post selectPost(@Param("id") int id);
}
