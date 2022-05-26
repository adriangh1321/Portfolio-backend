package com.argprogram.portfolio.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PortfolioAboutDto {

    @NullOrNotBlank
    private String aboutMe;

    public PortfolioAboutDto(@JsonProperty(value = "aboutMe", required = true) String aboutMe) {
        this.aboutMe = aboutMe;
    }

}
