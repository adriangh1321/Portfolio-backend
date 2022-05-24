package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class ProjectDto {

    private Long id;

    @NotBlank
    private String name;

    @NotBlank
    private String description;

    public ProjectDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "name", required = true) String name,
            @JsonProperty(value = "description", required = true) String description) {
        this.id = id;
        this.name = name;
        this.description = description;
    }

}
