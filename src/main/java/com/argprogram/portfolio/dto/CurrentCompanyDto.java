
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;


public class CurrentCompanyDto {
    
    private Long id;
    
    @NotBlank
    private String name;
    
    private String image;
    
    private String url;
}
