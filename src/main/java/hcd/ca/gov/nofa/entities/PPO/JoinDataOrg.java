/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hcd.ca.gov.nofa.entities.PPO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author santo
 */
@Data

@Getter
@Setter
@ToString
public class JoinDataOrg implements java.io.Serializable{
    private Integer id;
    private String field_name;
    private String file_name;
    private Integer organization_id;
    public JoinDataOrg() {
    }

    public JoinDataOrg(Integer id, String field_name, String file_name, Integer organization_id) {
        this.id = id;
        this.field_name = field_name;
        this.file_name = file_name;
        this.organization_id = organization_id;
    }

    
    
    
    
    
}
