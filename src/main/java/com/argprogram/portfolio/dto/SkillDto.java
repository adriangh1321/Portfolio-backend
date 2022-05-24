package com.argprogram.portfolio.dto;

import com.argprogram.portfolio.enumeration.SkillType;
import com.fasterxml.jackson.annotation.JsonProperty;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.Data;

@Data
public class SkillDto {

    private Long id;
    
    @NotNull
    private SkillType type;
    
    @NotBlank
    private String name;

    @NotNull
    @Max(value = 100, message = "The percent cannot be greater than 100")
    @Min(value = 0, message = "The percent cannot be less than 100")
    private Integer percent;

    public SkillDto(
            @JsonProperty(value = "id", required = false) Long id,
            @JsonProperty(value = "type", required = true) SkillType type,
            @JsonProperty(value = "name", required = true) String name,
            @JsonProperty(value = "percent", required = true) Integer percent) {
        this.id = id;
        this.type = type;
        this.name = name;
        this.percent = percent;
    }

}
