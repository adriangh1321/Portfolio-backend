package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.dto.RegisterRequest;
import com.argprogram.portfolio.model.User;
import org.mapstruct.Mapper;

@Mapper
public interface UserMapper {

    User toUser(RegisterRequest dto);

    AuthenticationResponse toAuthenticationResponse(User user, String jwt);
}
