
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.ExperienceCreateDto;
import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.dto.ExperiencePutDto;
import java.util.List;


public interface ExperienceService {
    
    ExperienceDto getById(Long id);
    
    List<ExperienceDto> getAllByPortfolioId(Long id);
    
    List<ExperienceDto> getAll();
    
    void update(Long id,ExperiencePutDto dto);
    
    void save(ExperienceCreateDto dto);
    
    void delete(Long id);
    
}
