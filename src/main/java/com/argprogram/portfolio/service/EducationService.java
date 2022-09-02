
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.dto.EducationPutDto;
import java.util.List;


public interface EducationService {
       
    List<EducationDto> getMeByToken();
    
    List<EducationDto> getAllByPortfolioId(Long id);
      
    void update(Long id,EducationPutDto dto);
    
    void save(EducationDto dto);
    
    void delete(Long id);
}
