package hcd.ca.gov.nofa.service;

import hcd.ca.gov.nofa.entities.Users.LoginDetail;
import hcd.ca.gov.nofa.entities.Users.Role;
import hcd.ca.gov.nofa.entities.Users.UserRole;
import hcd.ca.gov.nofa.repository.LoginDetailRepository;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

//import com.bezkoder.springjwt.models.User;

//import com.bezkoder.springjwt.repository.UserRepository;


@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	@Autowired
	LoginDetailRepository userRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//Users user = userRepository.findByUsername(username)
                LoginDetail user = userRepository.findByEmail(username);
//				.orElseThrow(() -> new UsernameNotFoundException("User Not Found with username: " + username));

		return UserDetailsImpl.build(user);
	}
        
        

}