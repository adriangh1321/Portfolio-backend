
package com.argprogram.portfolio.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProjectCreateDto {
    
    @NotBlank
    private String name;
    
    @NotBlank
    private String description;
       
    private String image;
    
    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String startDate;

    @Pattern(regexp = "\\d{4}-\\d{2}-\\d{2}", message = "The date format must be yyyy-MM-dd")
    private String endDate;
    
    @Pattern(regexp = "(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?",message = "The url field does not a url")
    private String url;
    
    
}
