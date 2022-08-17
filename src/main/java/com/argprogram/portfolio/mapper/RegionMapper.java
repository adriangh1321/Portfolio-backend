
package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.RegionDto;
import com.argprogram.portfolio.dto.RegionListDto;
import com.argprogram.portfolio.model.Region;
import org.mapstruct.Mapper;

@Mapper
public interface RegionMapper {
    
    RegionDto toRegionDto(Region region);
    
    RegionListDto toRegionListDto(Region region);
    
}
