
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
    private String occupation;

    private LocationDto location;

    @NullOrNotBlank
    private String image;

    public PortfolioBasicDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "firstname", required = true) String firstname,
            @JsonProperty(value = "lastname", required = true) String lastname,
            @JsonProperty(value = "occupation", required = true) String occupation,
            @JsonProperty(value = "location", required = true) LocationDto location,
            @JsonProperty(value = "image", required = true) String image) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.occupation = occupation;
        this.location = location;
        this.image = image;

    }
}
