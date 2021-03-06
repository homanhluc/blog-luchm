package com.luchm.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.luchm.domain.User;
import com.luchm.repository.UserRepository;
import com.luchm.service.UserService;


@Service
public class UserServiceImpl implements UserService, UserDetailsService{
	
	public static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	
	private UserRepository userRepository;
	
	@Autowired
	public UserServiceImpl(UserRepository userRepository) {
	
		this.userRepository = userRepository;
	}

	@Override
	public User findByEmail(String email) {
		return userRepository.findByEmail(email);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = findByEmail(username);
		
		if ( user == null){
			throw new UsernameNotFoundException(username);
		}
		return new UserDetailsImpl(user);
	}

	@Override
	public User saveUser(User user) {
		return userRepository.save(user);
	}

	@Override
	public List<User> findAllActiveUsers() {
		return (List<User>) userRepository.findAllByStatus("enabled");
	}

	@Override
	public User findByFirstName(String author) {
		return userRepository.findByFirstName(author);
	}

	@Override
	public User findById(Long id) {
		return userRepository.findOne(id);
	}

	@Override
	public User updateUser(User user, Long id) {
		User updatedUser = findById(id);
		updatedUser.setFacebook(user.getFacebook());
		updatedUser.setFirstName(user.getFirstName());
		updatedUser.setFullBio(user.getFullBio());
		updatedUser.setLinkedIn(user.getLinkedIn());
		updatedUser.setLastName(user.getLastName());
		updatedUser.setTwitter(user.getTwitter());
		updatedUser.setAltEmail(user.getAltEmail());
		updatedUser.setShortBio(user.getShortBio());
		updatedUser.setResponsibilities(user.getResponsibilities());
		
		return userRepository.save(updatedUser);
	}

}
