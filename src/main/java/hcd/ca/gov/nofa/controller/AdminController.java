/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.controller;

import hcd.ca.gov.nofa.entities.Users.Role;
import hcd.ca.gov.nofa.repository.RolesRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/api/admin")
public class AdminController {
    @Autowired
    private RolesRepository rolesRepository;

    @RequestMapping("/hello")
    public String hello() {
        return "Hello This is Administrator";
    }

    @GetMapping("/roles")
    List<Role> all() {
        return rolesRepository.findAll();
    }

}
