
package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.model.Experience;
import org.mapstruct.Mapper;


@Mapper
public interface ExperienceMapper {
    
    ExperienceDto toExperienceDto(Experience experience);
        
    Experience toExperience(ExperienceDto experienceDto);
    

}
