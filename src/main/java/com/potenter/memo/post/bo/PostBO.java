package com.potenter.memo.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.potenter.memo.common.FileManagerService;
import com.potenter.memo.model.Post;
import com.potenter.memo.post.dao.PostDAO;

@Service
public class PostBO {

	@Autowired
	private PostDAO postDAO;
	
	public int addPost(int userId, String subject, String content, MultipartFile file) {
		
		// 파일을 저장하고, 경로를 만들어 낸다.
		String filePath = FileManagerService.saveFile(userId, file);	
		
		return postDAO.insertPost(userId, subject, content, filePath);
	}
	
	public List<Post> getPostList(int userId) {
		return postDAO.selectPostList(userId);
	}

	public Post getPost(int id) {
		return postDAO.selectPost(id);
	}
	
}
