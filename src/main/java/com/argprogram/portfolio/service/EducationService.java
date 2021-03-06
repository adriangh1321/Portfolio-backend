
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.dto.EducationDto;
import java.util.List;


public interface EducationService {
    
    EducationDto getById(Long id);
    
    List<EducationDto> getAllByPortfolioId(Long id);
    
    List<EducationDto> getAll();
    
    void update(Long id,EducationDto dto);
    
    void save(EducationCreateDto dto);
    
    void delete(Long id);
}
