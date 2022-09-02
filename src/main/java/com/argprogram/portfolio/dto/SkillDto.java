package com.argprogram.portfolio.dto;

import com.argprogram.portfolio.enumeration.SkillType;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
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

   

}
