package com.Hussain.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;

import com.Hussain.Entity.User;
import com.Hussain.Repository.UserRepository;
import com.Hussain.Service.UserService;

public class UserServiceImp implements UserService {

	@Autowired
	UserRepository userRepository;
	
	public void register(User user) {
		userRepository.save(user);
		
	}

}
