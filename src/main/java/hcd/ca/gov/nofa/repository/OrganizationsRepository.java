/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;



import hcd.ca.gov.nofa.entities.PPO.Organization;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author santo
 */
@Repository
@Transactional
public interface OrganizationsRepository extends JpaRepository<Organization, Integer>{
    
    @Query("SELECT d FROM LoginDetail a, Person b, Parties c,Organization d  where a.persons_id=b and b.parties_id=c and d.parties_id=c and a.id= :id ")
    List <Organization> getOrganizationFromLoginDetail(Integer id);
    
    
    @Query("SELECT b.id FROM Organization a, Parties b where a.parties_id=b and a.id= :id ")
    Integer findPartiesIDFromOrg(Integer id);
    
    
}
