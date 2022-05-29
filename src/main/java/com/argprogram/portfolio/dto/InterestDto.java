
package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.NotBlank;
import lombok.Data;

@Data
public class InterestDto {
    
    private Long id;
    
    @NotBlank
    private String name;
    
    @NullOrNotBlank
    private String image;

    public InterestDto(
            @JsonProperty(value = "id", required = false)Long id,
            @JsonProperty(value = "name", required = true)String name,
            @JsonProperty(value = "image", required = true)String image) {
        this.id = id;
        this.name = name;
        this.image = image;
    }
    
    
}
