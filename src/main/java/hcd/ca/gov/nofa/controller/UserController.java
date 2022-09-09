/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.controller;

import hcd.ca.gov.nofa.entities.Users.LoginDetail;
import hcd.ca.gov.nofa.repository.LoginDetailRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author santo
 */
@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/api/users")
public class UserController {
    
    @Autowired
    LoginDetailRepository repoUsers;
    
    // User Table Data
    //@PreAuthorize("hasRole('admin')")
    @GetMapping("/users")
    List<LoginDetail> all() {
        return repoUsers.findAll();
    }
    
}
