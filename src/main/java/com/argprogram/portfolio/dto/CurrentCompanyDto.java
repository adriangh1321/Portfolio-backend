package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.Pattern;
import lombok.Data;

@Data

public class CurrentCompanyDto {

    private Long id;
    
    @NullOrNotBlank
    private String name;

    @NullOrNotBlank
    private String image;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?")
    private String url;

    public CurrentCompanyDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "name", required = true) String name,
            @JsonProperty(value = "image", required = true) String image,
            @JsonProperty(value = "url", required = true) String url) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.url = url;
    }

}
