
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProjectCreateDto {
    
    @NotBlank
    private String name;
    
    @NotBlank
    private String description;
    
    @NotNull
    private Long idPortfolio;
    
    
}
