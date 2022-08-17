
package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.CountryDto;
import com.argprogram.portfolio.model.Country;
import org.mapstruct.Mapper;

@Mapper
public interface CountryMapper {
    
    CountryDto toCountryDto(Country country);
    
}
