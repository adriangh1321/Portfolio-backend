package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PortfolioBasicDto {
    
    private Long id;

    @NullOrNotBlank
    private String firstname;

    @NullOrNotBlank
    private String lastname;

    @NullOrNotBlank
    private String ocupation;

    @NullOrNotBlank
    private String country;

    @NullOrNotBlank
    private String state;

    @NullOrNotBlank
    private String image;

    public PortfolioBasicDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "firstname", required = true) String firstname,
            @JsonProperty(value = "lastname", required = true) String lastname,
            @JsonProperty(value = "ocupation", required = true) String ocupation,
            @JsonProperty(value = "country", required = true) String country,
            @JsonProperty(value = "state", required = true) String state,
            @JsonProperty(value = "image", required = true) String image) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.ocupation = ocupation;
        this.country = country;
        this.state = state;
        this.image = image;
    }

}
