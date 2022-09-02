package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InterestCreateDto {

    @NotBlank
    private String name;

    @NullOrNotBlank
    private String image;

}
