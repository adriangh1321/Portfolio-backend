package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PortfolioBannerDto {

    @NullOrNotBlank
    private String banner;

    public PortfolioBannerDto(@JsonProperty(value = "banner", required = true) String banner) {
        this.banner = banner;
    }

}
