
package com.argprogram.portfolio.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LocationDto {
    
    private Long id;
    
    private String address;
    
    private RegionDto region;
    
}
