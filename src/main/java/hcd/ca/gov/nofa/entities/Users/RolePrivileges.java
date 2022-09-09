/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities.Users;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
@Table(name = "role_privileges")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Accessors(chain = true)
public class RolePrivileges {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    
    
    @JsonBackReference(value="priv_rolepriv")
    @JoinColumn(name = "privileges_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)   
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    Privileges privileges;
    
    @JsonBackReference(value="role_rolepriv")
    @JoinColumn(name = "roles_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY,optional = false)   
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    Role roles;
}
