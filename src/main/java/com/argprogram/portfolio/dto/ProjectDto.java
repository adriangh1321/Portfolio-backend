
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProjectDto {
    
    private Long id;
    
    @NotBlank
    private String name;
    
    @NotBlank
    private String description;
    
}
