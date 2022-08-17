
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.CountryDto;
import com.argprogram.portfolio.model.Country;
import java.util.List;


public interface CountryService {
    
    Country getById(Long id);
    
    List<CountryDto> getAll();
    
}
