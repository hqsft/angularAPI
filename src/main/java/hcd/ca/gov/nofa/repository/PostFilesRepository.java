/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;

import hcd.ca.gov.nofa.entities.PostFiles;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author santo
 */
public interface PostFilesRepository extends JpaRepository<PostFiles, Long> {

    /*
    List<PostFiles> findByPostFilesId(Long postId);
    @Transactional
    void deleteByPostId(long postId);
*/

}
