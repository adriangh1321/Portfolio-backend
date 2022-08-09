
package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.LocationDto;
import com.argprogram.portfolio.model.Location;
import org.mapstruct.Mapper;

@Mapper
public interface LocationMapper {
    
    LocationDto toLocationDto(Location location);
    
}
