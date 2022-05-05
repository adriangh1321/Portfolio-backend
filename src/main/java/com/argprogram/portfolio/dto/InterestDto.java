
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InterestDto {
    
    private Long id;
    
    @NotBlank
    private String name;
    
    private String image;
    
}