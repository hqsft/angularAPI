/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities.Users;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "user_roles")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Accessors(chain = true)
public class UserRole {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    @Column(name="created_by")
    private String createdBy;
    @Column(name="created_date")
    private Date createdDate;
    @Column(name="modified_by")
    private String modifiedBy;
    @Column(name="modified_date")
    private String modifiedDate;
    
    /*
    @ManyToMany(mappedBy = "userRoles")
    private Collection<Role> roles;
    */
    
    
    @JsonBackReference(value="loginDetail_userRole")
    @JoinColumn(name = "login_details_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    LoginDetail loginDetails;

    @JsonBackReference(value="role_userRole")
    @JoinColumn(name = "roles_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)   
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    Role roles;
}
