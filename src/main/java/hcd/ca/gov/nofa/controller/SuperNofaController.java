///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package hcd.ca.gov.nofa.controller;
//
//import hcd.ca.gov.nofa.entities.FormFields;
//import hcd.ca.gov.nofa.entities.SubmissionData;
//import hcd.ca.gov.nofa.entities.Submissions;
//
//import hcd.ca.gov.nofa.entities.Users;
//import hcd.ca.gov.nofa.repository.FormFieldsRepository;
//import hcd.ca.gov.nofa.repository.SubmissionDataRepository;
//import hcd.ca.gov.nofa.repository.SubmissionsRepository;
//
//import hcd.ca.gov.nofa.repository.UsersRepository;
//import java.net.URI;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//import java.util.Optional;
//import javax.mail.MessagingException;
//import javax.mail.internet.MimeMessage;
//import javax.validation.Valid;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.mail.javamail.JavaMailSender;
//import org.springframework.mail.javamail.MimeMessageHelper;
//import org.springframework.web.bind.annotation.CrossOrigin;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
//
///**
// *
// * @author santosh
// */
//@RestController
//@CrossOrigin(origins = "*")
//@RequestMapping("/api")
//public class SuperNofaController {
//
//    @Autowired
//    private UsersRepository repoUsers;
//
//    @RequestMapping("/hello")
//    public String hello() {
//        return "Hello World RESTful with Spring Boot";
//    }
//
//    // User Table Data
//    @GetMapping("/users")
//    List<Users> all() {
//        return repoUsers.findAll();
//    }
//
//    @PostMapping("/users")
//    public Users login(@RequestBody Users user) {
//
//        boolean res = repoUsers.existsByEmail(user.getEmail());
//        if (res != true) {
//            repoUsers.save(user);
//
//        } else {
//            repoUsers.UpdateSub(user.getToken(), user.getEmail());
//        }
//
//        Users data = repoUsers.findByEmail(user.getEmail());
//        return data;
//    }
//
//    //User Submission
//    @Autowired
//    private SubmissionsRepository submissionsrepository;
//
//
//  
//    @Autowired
//    private JavaMailSender sender;
//
//    @PostMapping("/sendMail")
//    public Map<String, String> sendMail(@RequestBody Map<String, Object> email) {
//        MimeMessage message = sender.createMimeMessage();
//        MimeMessageHelper helper = new MimeMessageHelper(message);
//        
//        HashMap<String, String> map = new HashMap<>();
//        String msg="";
//        
//        
//        System.out.println("RequestParameter: "+email);
//
//        try {
//            //helper.setTo(email);
//            helper.setTo("santosh.sarkar@telecommand.com");
//            helper.setText("Greetings :)");
//            helper.setSubject("Mail From Spring Boot");
//        } catch (MessagingException e) {
//            e.printStackTrace();
//            //return "Error while sending mail ..";
//            msg="Error while sending mail ..";
//            map.put("message", msg);
//            return map;
//        }
//        sender.send(message);
//        //return "Mail Sent Success!";
//        msg="Mail Sent Success!";
//        map.put("message", msg);
//        return map;
//    }
//    
//    // Submissions Table Data
//    @RequestMapping("/submission")
//    public Iterable<SubmissionData> getSubmissions() {
//        return submissiondatarepository.findAll();
//    }
//
//    @GetMapping("/submission/id/{id}")
//    public Optional<Submissions> getSubmissionsById(@PathVariable("id") Long id) {
//        return submissionsrepository.findById(id);
//
//    }
//    
//    @PostMapping("/submissions")
//    public Submissions create(@RequestBody Submissions submission) {
//        Submissions savedSubmission = submissionsrepository.save(submission);
//        return savedSubmission;
//    }
//    
//    @Autowired 
//    private SubmissionDataRepository submissiondatarepository;
//    
//      @Autowired 
//    private FormFieldsRepository formfieldrepository;
//    
//    //presceening
//    @PostMapping("/submission/id/{id}")
//    public String update(@PathVariable("id") Long id,@RequestBody SubmissionData subdata,@RequestParam String fieldname) {
//        
//      
////        FormFields form=new FormFields();
////        form.setId(1);
////        subdata.setForm_fields_id(form);
//        Optional<Submissions> sub= submissionsrepository.findById(id);
//        long id1=formfieldrepository.findFieldname(fieldname);
//        Optional<FormFields> form= formfieldrepository.findById(id1);
//       
//      
//        
//        
//        if(sub.isPresent()){
//            subdata.setSubmission_id(sub.get());
//        }
//        
//         if(form.isPresent()){
//            subdata.setForm_fields_id(form.get());
//        }
//        
//        
//       
//        
//        
//        
////       SubmissionData data=submissiondatarepository.save(subdata);
//      //          submissiondatarepository.UpdateSub(subdata.getCreated_by(),subdata.getData_value(),subdata.getForm_fields_id().getId(), subdata.getSubmission_id().getId(), subdata.getId());
//      submissiondatarepository.UpdateSub(subdata.getCreated_by(),subdata.getData_value(),subdata.getSubmission_id(),subdata.getForm_fields_id());
//      return "updated";
//               
//
//    }
//    
//
//
//}
