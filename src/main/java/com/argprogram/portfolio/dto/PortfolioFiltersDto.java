
package com.argprogram.portfolio.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PortfolioFiltersDto {
    private String find;
    private String country;
    private String region;
    private String order;
    
    
    public Boolean isASC() {
        return this.order.compareToIgnoreCase("ASC") == 0;
    }

    public Boolean isDESC() {
        return this.order.compareToIgnoreCase("DESC") == 0;
    }
    
    
}
