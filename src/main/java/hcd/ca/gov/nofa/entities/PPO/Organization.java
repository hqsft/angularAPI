/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities.PPO;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 *
 * @author santo
 */
@Entity
@Table(name = "organizations")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Accessors(chain = true)
public class Organization {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="name")
    private String name;
    
    @Column(name="type")
    private String type;
    @Column(name="county")
    private String county;
    @Column(name="region")
    private String region;
    
    @Column(name="address")
    private String address;
    @Column(name="zip")
    private String zip;
    @Column(name="city")
    private String city;
    @Column(name="state")
    private String state;
    
    @Column(name="tribal_entity", columnDefinition="tinyint(1) default 0")
    private boolean tribal_entity;
    @Column(name="contact_name")
    private String contact_name;
    @Column(name="contact_title")
    private String contact_title;
    @Column(name="contact_email")
    private String contact_email;
    @Column(name="contact_phone")
    private String contact_phone;
    
    @Column(name="alt_contact", columnDefinition="tinyint(1) default 0")
    private boolean alt_contact;
    @Column(name="alt_contact_name")
    private String alt_contact_name;
    @Column(name="alt_contact_title")
    private String alt_contact_title;
    @Column(name="alt_contact_email")
    private String alt_contact_email;
    @Column(name="alt_contact_phone")
    private String alt_contact_phone;
    
    
    
    
    
    
    
    
    @Column(name="created_by")
    private String createdBy;
    @Column(name="created_date")
    private Date createdDate;;
    @Column(name="modified_by")
    private String modifiedBy;
    @Column(name="modified_date")
    private String modifiedDate;
    
    @JsonBackReference(value="parties_org")
    @JoinColumn(name = "parties_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private Parties parties_id;
    
    @JsonManagedReference(value="org_orgfiles")
    @OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY, mappedBy = "organization")
    private Set<OrganizationFiles> organizationFiles = new HashSet<>();
    
}
