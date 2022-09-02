package com.argprogram.portfolio.security.impl;

import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Service;

@Service
public class UserSecurityService implements UserDetailsService  {
    
    @Autowired
    private UserRepository userRepository;
    
   
    @Override
    @Transactional(readOnly=true)
    public UserDetails loadUserByUsername(String email) throws NotFoundException {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new NotFoundException("User not found"));
        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), user.getAuthorities());
    }

}
