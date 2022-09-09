package hcd.ca.gov.nofa.service;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

//import com.bezkoder.springjwt.models.User;
import com.fasterxml.jackson.annotation.JsonIgnore;
import hcd.ca.gov.nofa.entities.Users.LoginDetail;
import hcd.ca.gov.nofa.entities.Users.UserRole;
import java.util.ArrayList;
import java.util.Set;

public class UserDetailsImpl implements UserDetails {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String username;

    private String email;

    @JsonIgnore
    private String password;

    public Collection<? extends GrantedAuthority> authorities;

    /*
    private LoginDetail user;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<UserRole> roles = user.getUserRole();
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();

        for (UserRole role : roles) {
            authorities.add(new SimpleGrantedAuthority(role.getRoles().getName()));
        }
        System.out.println("authorities: " + authorities);
        return authorities;
    }
*/
    public UserDetailsImpl(Integer id, String email, String password,
            Collection<? extends GrantedAuthority> authorities) {
        this.id = id;
        //this.username = username;
        this.email = email;
        this.password = password;
        this.authorities = authorities;
    }

    public static UserDetailsImpl build(LoginDetail user) {
        List<GrantedAuthority> authorities = user.getUserRole().stream()
                //.map(role -> new SimpleGrantedAuthority(role.getName().name()))
                .map(role -> new SimpleGrantedAuthority(role.getRoles().getName().toString()))
                .collect(Collectors.toList());

        return new UserDetailsImpl(
                user.getId(),
                //user.getUsername(), 
                user.getEmail(),
                user.getSub(),
                authorities);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    public Integer getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        UserDetailsImpl user = (UserDetailsImpl) o;
        return Objects.equals(id, user.id);
    }
}
