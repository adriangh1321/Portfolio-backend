
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.EducationDto;
import java.util.List;


public interface EducationService {
    
    EducationDto getById(Long id);
    
    List<EducationDto> getMeByToken();
    
    List<EducationDto> getAllByPortfolioId(Long id);
      
    void update(Long id,EducationDto dto);
    
    void save(EducationDto dto);
    
    void delete(Long id);
}
