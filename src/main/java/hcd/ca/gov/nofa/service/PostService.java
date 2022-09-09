/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.service;

import hcd.ca.gov.nofa.entities.Post;
import hcd.ca.gov.nofa.repository.PostRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author santo
 */
@Service
public class PostService {

    @Autowired
    private PostRepository repo;
    
    public List<Post> listAll() {		
		return repo.findAll();
	}
	
	public void save(Post post) {
		repo.save(post);
	}
	
	public Post get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}

}
