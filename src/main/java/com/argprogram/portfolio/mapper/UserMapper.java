package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.AuthenticationResponse;
import com.argprogram.portfolio.dto.RegisterRequest;
import com.argprogram.portfolio.dto.UserDto;
import com.argprogram.portfolio.model.User;
import org.mapstruct.Mapper;

@Mapper
public interface UserMapper {

    User toUser(RegisterRequest dto);
    
    UserDto toUseDto(User user);
    
    AuthenticationResponse toAuthenticationResponse(String jwt, UserDto user);
}
