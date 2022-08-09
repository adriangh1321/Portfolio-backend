package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PortfolioBasicPatchDto {
    
    private Long id;

    @NullOrNotBlank
    private String firstname;

    @NullOrNotBlank
    private String lastname;

    @NullOrNotBlank
    private String occupation;
    
    @NullOrNotBlank
    private String address;
            
    private Long regionId;        

    @NullOrNotBlank
    private String image;

    public PortfolioBasicPatchDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "firstname", required = true) String firstname,
            @JsonProperty(value = "lastname", required = true) String lastname,
            @JsonProperty(value = "occupation", required = true) String occupation,
            @JsonProperty(value = "address", required = true) String address,
            @JsonProperty(value = "regionId", required = true) Long regionId,
            @JsonProperty(value = "image", required = true) String image) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.occupation = occupation;
        this.address = address;
        this.regionId = regionId;
        this.image = image;
    }

}
