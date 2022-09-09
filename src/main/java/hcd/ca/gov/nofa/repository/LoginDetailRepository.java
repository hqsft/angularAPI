/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;

//import hcd.ca.gov.nofa.entities.Users;

import hcd.ca.gov.nofa.entities.Users.LoginDetail;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author santo
 */
@Repository
@Transactional
public interface LoginDetailRepository extends JpaRepository<LoginDetail, Integer>{
    
    LoginDetail findByEmail(String email);
    LoginDetail findBySub(String sub);
    
    @Query("SELECT c.id FROM LoginDetail a, Person b, Parties c where a.persons_id=b and b.parties_id=c and a.id= :id ")
    Integer getPartiesIDFromLoginDetail(Integer id);
    
    
    
    //@Transactional
    @Modifying
    @Query("UPDATE LoginDetail u  SET u.sub = :sub WHERE u.email = :email")
    void UpdateSub(String sub, String email);

    boolean existsByEmail(String email);
    
}
