/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities.PPO;

import hcd.ca.gov.nofa.entities.Users.LoginDetail;
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
@Table(name = "persons")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Accessors(chain = true)
public class Person {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="first_name")
    private String firstName;
    @Column(name="last_name")
    private String lastName;
    
    @Column(name="middle_initial")
    private String middleInitial;
    @Column(name="created_by")
    private String createdBy;
    @Column(name="created_date")
    private Date createdDate;
    @Column(name="modified_by")
    private String modifiedBy;
    @Column(name="modified_date")
    private String modifiedDate;
    
    @JsonBackReference(value="parties_person")
    @JoinColumn(name = "parties_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private Parties parties_id;
    
    @JsonManagedReference(value="persons")
    @OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY, mappedBy = "persons_id")
    private Set<LoginDetail> loginDetails = new HashSet<>();
    
    
}
