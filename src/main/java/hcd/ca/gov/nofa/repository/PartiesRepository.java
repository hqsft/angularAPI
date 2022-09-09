/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;




import hcd.ca.gov.nofa.entities.PPO.Parties;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author santo
 */
public interface PartiesRepository extends JpaRepository<Parties, Integer>{
    
    Parties findById(int id);
    
    @Query("SELECT c FROM LoginDetail a, Person b, Parties c where a.persons_id=b and b.parties_id=c and a.id= :id ")
    List <Parties> getPartiesFromLoginDetail(Integer id);
    
    @Query("SELECT b FROM Organization a, Parties b where a.parties_id=b and a.id= :id ")
    Parties findPartiesIDFromOrg(Integer id);
}
