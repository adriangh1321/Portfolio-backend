package com.argprogram.portfolio.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContactInformationDto {

    private Long id;
    @NotBlank
    @Pattern(regexp = "^[(]{1}[0-9]+[)]{1}[0-9]+$", message = "This field must contain only numbers with the area code in parentheses like this (xxx)xxxxxxx")
    private String phone;
    @NotBlank
    @Email
    private String email;
    @NotBlank
    private String linkedIn;
    @NotBlank
    private String remoteRepository;
}
