package com.argprogram.portfolio.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AuthenticationRequest {

    @NotNull(message = "The email must not be null")
    @Email(message = "This field must be an email")
    private String email;

    @NotBlank(message ="The password must not be empty")
    private String password;
}
