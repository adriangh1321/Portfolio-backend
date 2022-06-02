package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.AuthenticationRequest;
import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.exception.BadUserLoginException;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.UserMapper;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.UserRepository;
import com.argprogram.portfolio.security.JwtUtils;
import com.argprogram.portfolio.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service

public class AuthServiceImpl implements AuthService {

    @Autowired
    private UserRepository usersRepository;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private JwtUtils jwtTokenUtil;
    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserLogged() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName();
        return this.usersRepository.findByEmail(username)
                .orElseThrow(() -> new NotFoundException("User not found"));

    }

    @Override
    public AuthenticationResponse login(AuthenticationRequest authRequest) {
        UserDetails userDetails;
        User user;
        try {
            Authentication auth = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(authRequest.getEmail(), authRequest.getPassword()));
            userDetails = (UserDetails) auth.getPrincipal();            
        } catch (Exception e) {
            throw new BadUserLoginException("There is a problem at login");
        }
        final String jwt = jwtTokenUtil.generateToken(userDetails);
        return this.userMapper.toAuthenticationResponse(jwt);

    }

}
