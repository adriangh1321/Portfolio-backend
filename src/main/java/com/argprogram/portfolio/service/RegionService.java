
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.RegionListDto;
import com.argprogram.portfolio.model.Region;
import java.util.List;


public interface RegionService {
    
    Region getById(Long id);
    
    List<RegionListDto> getAllByCountryId(Long countryId);
    
}
