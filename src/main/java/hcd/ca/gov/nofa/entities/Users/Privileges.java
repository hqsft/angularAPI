/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities.Users;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.fasterxml.jackson.annotation.JsonProperty;
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
@Table(name = "privileges")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Accessors(chain = true)
public class Privileges {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name="description")
    private String description;
    @Column(name="privilege_end_point")
    private String privilege_end_point;
    
    @JsonManagedReference(value="priv_rolepriv")
    @OneToMany(cascade = CascadeType.ALL,fetch=FetchType.LAZY, mappedBy = "privileges")
    private Set<RolePrivileges> rolePrivileges = new HashSet<>();
    
    
    @JsonBackReference(value="priv_cat_priv")
    @JoinColumn(name = "privilege_categories_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)   
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    PrivilegeCategories privilegeCategories;
    
}
