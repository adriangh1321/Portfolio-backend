
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.AuthenticationRequest;
import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.model.User;


public interface AuthService {
    
    User getUserLogged();
    
    AuthenticationResponse login(AuthenticationRequest authRequest);
       
}
