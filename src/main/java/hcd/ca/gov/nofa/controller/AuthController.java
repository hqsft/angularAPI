package hcd.ca.gov.nofa.controller;


import hcd.ca.gov.nofa.entities.Users.LoginDetail;
import hcd.ca.gov.nofa.entities.PPO.Organization;
import hcd.ca.gov.nofa.entities.PPO.Parties;
import hcd.ca.gov.nofa.entities.PPO.Person;

import hcd.ca.gov.nofa.jwt.JwtUtils;
import hcd.ca.gov.nofa.payload.request.LoginRequest;
import hcd.ca.gov.nofa.payload.response.JwtResponse;
import hcd.ca.gov.nofa.repository.LoginDetailRepository;
import hcd.ca.gov.nofa.repository.OrganizationsRepository;
import hcd.ca.gov.nofa.repository.PartiesRepository;
import hcd.ca.gov.nofa.repository.PersonRepository;
import hcd.ca.gov.nofa.repository.RolesRepository;

import hcd.ca.gov.nofa.service.UserDetailsImpl;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    AuthenticationManager authenticationManager;

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

    @Autowired
    JwtUtils jwtUtils;

    @Autowired
    PasswordEncoder encoder;

    

    Date date = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    
    @PostMapping("/signin")
    public ResponseEntity<?> authenticateUser(@RequestBody LoginRequest loginRequest) {
        
        System.out.println("Email: " + loginRequest.getEmail());
        System.out.println("Password: " + loginRequest.getSub());
        System.out.println("FirstName: " + loginRequest.getFname());
        System.out.println("Middle Name: " + loginRequest.getMname());
        System.out.println("LastName: " + loginRequest.getLname());
        
        Parties parties= new Parties();
        Person person= new Person();
        Organization organization= new Organization();
        LoginDetail user = new LoginDetail();
        
        boolean res = repoUsers.existsByEmail(loginRequest.getEmail());
        if (res != true) {
            System.out.println("If Block: "+res);
            
            // Create Parties
            parties.setCreatedBy("Azure");
            parties.setCreatedDate(date);
            Parties savedParties= partiesRepository.save(parties);
            
            // Create Person
            person.setParties_id(parties);
            person.setCreatedBy("Azure");
            person.setCreatedDate(date);
            person.setFirstName(loginRequest.getFname());
            person.setLastName(loginRequest.getLname());
            person.setMiddleInitial(loginRequest.getMname());
            Person savedPerson= personRepository.save(person);
            
            // Create Organization
            organization.setParties_id(parties);
            organization.setCreatedBy("Azure");
            organization.setCreatedDate(date);
            Organization savedOrganization=organizationsRepository.save(organization);
            
            // Create LoginDetails
            user.setPersons_id(person);
            user.setCreatedDate(date);
            user.setEmail(loginRequest.getEmail());
            user.setSub(encoder.encode(loginRequest.getSub()));
            //user.setSub(loginRequest.getSub());
            repoUsers.save(user);
            
            
        }else {
            System.out.println("Else Block: "+res);
            repoUsers.UpdateSub(encoder.encode(loginRequest.getSub()), loginRequest.getEmail());
            //repoUsers.UpdateSub(loginRequest.getSub(), loginRequest.getEmail());
        }
        
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getSub()));

        SecurityContextHolder.getContext().setAuthentication(authentication);

        String jwt = jwtUtils.generateJwtToken(authentication);

        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        List<String> roles = userDetails.getAuthorities().stream()
                .map(item -> item.getAuthority())
                .collect(Collectors.toList());

        return ResponseEntity.ok(new JwtResponse(jwt,
                userDetails.getId(),
                userDetails.getUsername(),
                userDetails.getEmail(),
                roles));
        
        
        
       // return ResponseEntity.ok("aa");
    }
    
    

    
}
