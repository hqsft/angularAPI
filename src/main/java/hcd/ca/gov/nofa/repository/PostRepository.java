/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;

import hcd.ca.gov.nofa.entities.Post;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author santo
 */
public interface PostRepository extends JpaRepository<Post, Long> {

    List<Post> findByPublished(boolean published);
    List<Post> findByTitleContaining(String title);
}
