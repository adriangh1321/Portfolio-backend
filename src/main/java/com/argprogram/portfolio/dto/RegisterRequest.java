
package com.argprogram.portfolio.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RegisterRequest {
    
    @NotNull(message = "Username must not be null")
    @Email(message = "Username must be an email")
    private String email;
    
    @NotBlank(message = "Password must have no spaces") 
    @Size(min = 8,max = 16, message = "The password must be between 8 and 16 characters long")
    private String password;
    
    @NotBlank(message = "Nickname must not be null")
    @Size(min = 4,max = 16, message = "The nickname must be between 4 and 16 characters long")
    private String nickname;
    
}
