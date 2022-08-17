
package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import lombok.Data;


@Data
public class ExperiencePutDto {
    
    @JsonCreator
    public ExperiencePutDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "position", required = true) String position,
            @JsonProperty(value = "company", required = true) String company,
            @JsonProperty(value = "description", required = true) String description,
            @JsonProperty(value = "image", required = true) String image,
            @JsonProperty(value = "startDate", required = true) String startDate,
            @JsonProperty(value = "endDate", required = true) String endDate,
            @JsonProperty(value = "regionId", required = true) Long regionId,
            @JsonProperty(value = "address", required = true) String address) {
        this.id = id;
        this.position = position;
        this.company = company;
        this.description = description;
        this.image = image;
        this.startDate = startDate;
        this.endDate = endDate;
        this.regionId = regionId;
        this.address = address;
    }

    private Long id;

    @NotBlank
    private String position;

    @NotBlank
    private String company;

    @NotBlank
    private String description;

    private String image;

    @NotNull
    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String startDate;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String endDate;
    
    @NotNull
    private Long regionId;    
    
    @NullOrNotBlank
    private String address;
}
