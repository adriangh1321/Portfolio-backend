package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import lombok.Data;

@Data
public class EducationDto {

    public EducationDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "title", required = true)String title,
            @JsonProperty(value = "institute", required = true)String institute,
            @JsonProperty(value = "startDate", required = true)String startDate,
            @JsonProperty(value = "endDate", required = true)String endDate,
            @JsonProperty(value = "image", required = true)String image) {
        this.id = id;
        this.title = title;
        this.institute = institute;
        this.startDate = startDate;
        this.endDate = endDate;
        this.image = image;
    }
        

    private Long id;
    
    @NotBlank
    private String title;
    
    @NotBlank
    private String institute;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String startDate;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String endDate;

    private String image;

}
