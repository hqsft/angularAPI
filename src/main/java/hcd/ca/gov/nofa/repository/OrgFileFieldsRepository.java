/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.repository;


import hcd.ca.gov.nofa.entities.PPO.OrganizationFileFields;
import java.util.Collection;
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
public interface OrgFileFieldsRepository extends JpaRepository<OrganizationFileFields, Integer>{
    
    //String findByDirectoryStructure(String field_name);
    
    @Query("SELECT u.directoryStructure  FROM OrganizationFileFields u WHERE u.fieldName = :field_name ")
    String findDirectoryStructureByFieldname(String field_name);
    
    
    @Query("SELECT  u.id  FROM OrganizationFileFields u WHERE u.fieldName = :name ")
    Integer findFieldname(String name);


    
    
}
