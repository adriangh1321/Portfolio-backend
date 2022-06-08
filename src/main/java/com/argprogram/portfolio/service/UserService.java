
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.dto.RegisterRequest;


public interface UserService {
    
    AuthenticationResponse save(RegisterRequest dto);
}
