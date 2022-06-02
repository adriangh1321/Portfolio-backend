package com.argprogram.portfolio.controller;

import com.argprogram.portfolio.dto.AuthenticationRequest;
import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.dto.RegisterRequest;
import com.argprogram.portfolio.service.AuthService;
import com.argprogram.portfolio.service.impl.UserServiceImpl;
import javax.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/auth")
public class AuthController {

    private final UserServiceImpl userService;
    private final AuthService authService;

    @PostMapping("/register")
    public ResponseEntity<AuthenticationResponse> save(@Valid @RequestBody RegisterRequest user) {
        return ResponseEntity.status(HttpStatus.CREATED).body(userService.save(user));
    }

    @PostMapping("/login")
    public ResponseEntity<AuthenticationResponse> login(@Valid @RequestBody AuthenticationRequest authRequest) {
        return ResponseEntity.ok(this.authService.login(authRequest));
    }
}
