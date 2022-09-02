package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.dto.RegisterRequest;
import com.argprogram.portfolio.exception.DuplicateValueException;
import com.argprogram.portfolio.mapper.UserMapper;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Role;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.UserRepository;
import com.argprogram.portfolio.security.JwtUtils;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.RoleService;
import com.argprogram.portfolio.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserMapper userMapper;
    private final JwtUtils jwtUtils;
    private final RoleService roleService;
    private final Long USER_ROLE_ID = 2L;
    private final PortfolioService portfolioService;

    @Override
    public AuthenticationResponse save(RegisterRequest registerRequest) {
        this.userRepository.findByEmail(registerRequest.getEmail())
                .ifPresent((user) -> {
                    throw new DuplicateValueException("This email already exists","email");
                });
        this.userRepository.findByNickname(registerRequest.getNickname())
                .ifPresent((user) -> {
                    throw new DuplicateValueException("This nickname already exists","nickname");
                });
        
        User newUser = userMapper.toUser(registerRequest);
        newUser.setPassword(passwordEncoder.encode(newUser.getPassword()));
        Role roleUser = this.roleService.getById(this.USER_ROLE_ID);
        newUser.setRole(roleUser);
        Portfolio newPortfolio = this.portfolioService.save(newUser);
        String jwt = this.jwtUtils.generateToken(newUser);
        
        return this.userMapper.toAuthenticationResponse(jwt,this.userMapper.toUseDto(newUser));
    }
}
