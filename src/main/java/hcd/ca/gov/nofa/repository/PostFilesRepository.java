/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;

import hcd.ca.gov.nofa.entities.PostFiles;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author santo
 */
public interface PostFilesRepository extends JpaRepository<PostFiles, Long> {

    List<PostFiles> findByPostId(Long postId);

    @Transactional
    void deleteByPostId(Long postId);
    
    @Query(value = "SELECT id FROM post_files where post_id = ?1 ", nativeQuery = true)
    Long getIdFromPostId(Long postId);

}
