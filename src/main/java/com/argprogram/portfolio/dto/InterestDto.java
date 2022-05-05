
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;


public class InterestDto {
    
    private Long id;
    
    @NotBlank
    private String name;
    
    private String image;
    
}
