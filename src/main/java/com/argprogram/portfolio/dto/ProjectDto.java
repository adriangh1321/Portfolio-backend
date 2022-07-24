package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import lombok.Data;

@Data
public class ProjectDto {

    private Long id;

    @NotBlank
    private String name;

    @NotBlank
    private String description;
    
    private String image;
    
    @NotNull
    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String startDate;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String endDate;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?",message = "The url field does not a url")
    private String url;

    public ProjectDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "name", required = true) String name,
            @JsonProperty(value = "description", required = true) String description,
            @JsonProperty(value = "image", required = true) String image,
            @JsonProperty(value = "startDate", required = true) String startDate,
            @JsonProperty(value = "endDate", required = true) String endDate,
            @JsonProperty(value = "url", required = true) String url) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.startDate = startDate;
        this.endDate = endDate;
        this.url = url;
    }

}
