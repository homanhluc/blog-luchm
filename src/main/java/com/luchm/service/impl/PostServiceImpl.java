package com.luchm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.luchm.domain.Post;
import com.luchm.repository.PostRepository;
import com.luchm.service.PostService;

@Service
public class PostServiceImpl implements PostService {
	
	@Autowired
	private PostRepository postRepository;

	@Override
	public List<Post> listAll() {
		return (List<Post>) postRepository.findAll();
	}

	@Override
	public Post findPostBySlug(String slug) {
		return postRepository.findBySlug(slug);
	}

	@Override
	public List<Post> list() {
		return postRepository.findAllByDraft(false);
	}

	@Override
	public List<Post> findPostByAuthor(String authorId) {
		return postRepository.findByUserFirstName(authorId);
	}

	@Override
	public List<Post> findDraftPosts(Long id) {
		return postRepository.findByDraftAndUserId(true, id);
	}

	@Override
	public Post getPost(Long id) {
		return postRepository.findOne(id);
	}

	@Override
	public Post savePost(Post post) {
		return postRepository.save(post);
	}

	@Override
	public void deletePost(Long id) {
		postRepository.delete(id);
	}

	@Override
	public List<Post> findByUserId(Long id) {
		return postRepository.findByUserId(id);
	}

}
