
package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.InterestCreateDto;
import com.argprogram.portfolio.dto.InterestDto;
import com.argprogram.portfolio.model.Interest;
import org.mapstruct.Mapper;

@Mapper
public interface InterestMapper {
    
    InterestDto toInterestDto(Interest interest);
    
    Interest toInterest(InterestDto interestDto);
    
    Interest toInterest(InterestCreateDto interestDto);
}
