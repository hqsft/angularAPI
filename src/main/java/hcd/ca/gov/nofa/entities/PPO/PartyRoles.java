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
@Table(name = "party_roles")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Accessors(chain = true)
public class PartyRoles {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @Column(name="created_by")
    private String createdBy;
    @Column(name="created_date")
    private Date createdDate;
    @Column(name="modified_by")
    private String modifiedBy;
    
    
    @JsonBackReference(value="party_role_type_partyrole")
    @JoinColumn(name = "party_role_types_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)   
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    PartyRoleTypes party_role_types;
    
    
    
    @JsonBackReference(value="prt")
    @JoinColumn(name = "parties_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)   
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    Parties parties;
   
    

    
}
