/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author santo
 */
@Entity
@Table(name = "post")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "title")
    private String title;
    @Column(name = "body")
    private String body;
    @Column(name = "published")
    private boolean published;
    
    @Column(name = "email")
    private String email;
    @Column(name = "project")
    private String project;
    @Column(name = "organisation")
    private String organisation;
    @Column(name = "file")
    private String file;
    
    @OneToMany(mappedBy="post")
    private Set<PostFiles> postFiles;

    public Set<PostFiles> getPostFiles() {
        return postFiles;
    }

    public void setPostFiles(Set<PostFiles> postFiles) {
        this.postFiles = postFiles;
    }
    
    

    public Post() {
    }

    public Post(Long id, String title, String body, boolean published, String email, String project, String organisation, String file) {
        this.id = id;
        this.title = title;
        this.body = body;
        this.published = published;
        this.email = email;
        this.project = project;
        this.organisation = organisation;
        this.file = file;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    

    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public boolean isPublished() {
        return published;
    }

    public void setPublished(boolean published) {
        this.published = published;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getOrganisation() {
        return organisation;
    }

    public void setOrganisation(String organisation) {
        this.organisation = organisation;
    }

    
}
