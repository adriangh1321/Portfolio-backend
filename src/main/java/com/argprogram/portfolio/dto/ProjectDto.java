
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;


public class ProjectDto {
    
    private Long id;
    
    @NotBlank
    private String name;
    
    @NotBlank
    private String description;
    
}
