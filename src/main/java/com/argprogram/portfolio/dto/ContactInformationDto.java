package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import lombok.Data;

@Data
public class ContactInformationDto {

    private Long id;
    
    @NotBlank
    @Pattern(regexp = "^[(]{1}[0-9]+[)]{1}[0-9]+$", message = "This field must contain only numbers with the area code in parentheses like this (xxx)xxxxxxx")
    private String phone;
    
    @NotBlank
    @Email
    private String email;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?")
    private String linkedIn;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?")
    private String remoteRepository;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?")
    private String facebook;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?")
    private String twitter;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?")
    private String instagram;

    public ContactInformationDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "phone", required = true) String phone,
            @JsonProperty(value = "email", required = true) String email,
            @JsonProperty(value = "linkedIn", required = true) String linkedIn,
            @JsonProperty(value = "remoteRepository", required = true) String remoteRepository,
            @JsonProperty(value = "facebook", required = true) String facebook,
            @JsonProperty(value = "twitter", required = true) String twitter,
            @JsonProperty(value = "instagram", required = true) String instagram) {
        this.id = id;
        this.phone = phone;
        this.email = email;
        this.linkedIn = linkedIn;
        this.remoteRepository = remoteRepository;
        this.facebook=facebook;
        this.twitter=twitter;
        this.instagram=instagram;
    }

}
