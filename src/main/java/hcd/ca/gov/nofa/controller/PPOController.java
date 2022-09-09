/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.controller;

import hcd.ca.gov.nofa.entities.Users.LoginDetail;
import hcd.ca.gov.nofa.entities.PPO.Organization;
import hcd.ca.gov.nofa.entities.PPO.Parties;
import hcd.ca.gov.nofa.entities.PPO.Person;
import hcd.ca.gov.nofa.repository.LoginDetailRepository;
import hcd.ca.gov.nofa.repository.OrganizationsRepository;
import hcd.ca.gov.nofa.repository.PartiesRepository;
import hcd.ca.gov.nofa.repository.PersonRepository;
import hcd.ca.gov.nofa.repository.RolesRepository;
import java.net.URI;
import java.util.List;
import java.util.Optional;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

/**
 *
 * @author santo
 */
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/test")
public class PPOController {
    
    @Autowired
    LoginDetailRepository repoUsers;
    @Autowired
    RolesRepository roleRepository;
    @Autowired
    PartiesRepository partiesRepository;
    @Autowired
    PersonRepository personRepository;;
    @Autowired
    OrganizationsRepository organizationsRepository;
    
    
    @GetMapping("/parties")
    List<Parties> getAllParties() {
        return partiesRepository.findAll();
    }
    
    @GetMapping("/persons")
    List<Person> getAllPersons() {
        return personRepository.findAll();
    }
    // Get Parties_id from user_id
    @GetMapping("/parties_req/user/{userId}")
    List<Parties> getPartiesFromLoginId(@PathVariable Integer userId) {
        //return repoUsers.getPartiesIDFromLoginDetail(userId);
        return partiesRepository.getPartiesFromLoginDetail(userId);
    }
    
    
    // Organizations Table Data
    @RequestMapping("/organizations")
    public Iterable<Organization> getOrganization() {
        return organizationsRepository.findAll();
    }
    @GetMapping("/organizations/{id}")
    public ResponseEntity<Organization> getById(@PathVariable Integer id) {
        Optional<Organization> optionalLibrary = organizationsRepository.findById(id);
        if (!optionalLibrary.isPresent()) {
            return ResponseEntity.unprocessableEntity().build();
        }

        return ResponseEntity.ok(optionalLibrary.get());
    }
    @PutMapping(value = "/organizations/{id}")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Organization> updateOrganization(@PathVariable Integer id, @RequestBody Organization organization){
        
        Optional<Organization> organizationData = organizationsRepository.findById(id);
        
        if (organizationData.isPresent()) {
        Parties parties = partiesRepository.findPartiesIDFromOrg(id);
        int partiesId = organizationsRepository.findPartiesIDFromOrg(id);
        System.out.println("partiesId: "+partiesId);
        organization.setId(id);
        organization.setParties_id(parties);
        //organization.setParties_id(partiesRepository.findById(partiesId));
        return new ResponseEntity<>(organizationsRepository.save(organization), HttpStatus.OK);
        }else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
          }
    }
    /*
    // Create Organization
    @PostMapping("/login/{login_id}/create_organization")
    public ResponseEntity<Organization> createOrganization(@Valid @RequestBody Organization organization, @PathVariable Integer login_id) {
        int parties_id=repoUsers.getPartiesIDFromLoginDetail(login_id);
        //if(parties_id==0){return (ResponseEntity<Organization>) ResponseEntity.ok();} 
        organization.setParties_id(partiesRepository.findById(parties_id));
        Organization savedOrganization = organizationsRepository.save(organization);
        URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
                .buildAndExpand(savedOrganization.getId()).toUri();

        return ResponseEntity.created(location).body(savedOrganization);
    }
    // Delete Organization
    @DeleteMapping("/organization/{id}")
    public ResponseEntity<String> deleteOrganization(@PathVariable Integer id) {
        Optional<Organization> optionalSubmission = organizationsRepository.findById(id);
        if (!optionalSubmission.isPresent()) {
            return ResponseEntity.unprocessableEntity().build();
        }

        organizationsRepository.delete(optionalSubmission.get());

        //return ResponseEntity.noContent().build();
        return ResponseEntity
            .status(HttpStatus.ACCEPTED)
            .body("Deleted record with organization_id: "+id);
    }
*/
    // Get Organization from user_id
    @GetMapping("/org_req/user/{userId}")
    List<Organization> getOrgFromLoginId(@PathVariable Integer userId) {
        return organizationsRepository.getOrganizationFromLoginDetail(userId);
    }
    
    
}
