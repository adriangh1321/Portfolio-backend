package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

public class ExperienceDto {

    private Long id;

    @NotBlank
    private String position;

    @NotBlank
    private String company;

    @NotBlank
    private String description;

    private String image;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String startDate;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String endDate;

    @NotBlank
    private String state;

    @NotBlank
    private String country;

}
