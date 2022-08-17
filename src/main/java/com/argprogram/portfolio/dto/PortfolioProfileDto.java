
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PortfolioProfileDto {
    
    private String firstname;
    
    private String lastname;
    
    private String image;
    
    @NotNull
    private String nickname;
    
    private String country;
    
    private String region;
    
    private String occupation;
}
