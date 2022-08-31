
package com.argprogram.portfolio.mapper;


import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.model.Education;
import org.mapstruct.Mapper;

@Mapper
public interface EducationMapper {
    
    EducationDto toEducationDto(Education education);
    
    Education toEducation(EducationDto educationDto);
    
}
