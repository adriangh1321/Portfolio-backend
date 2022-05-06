
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.SkillDto;
import java.util.List;


public interface SkillService {
    
    SkillDto getById(Long id);
    
    List<SkillDto> getAllByPortfolioId(Long id);
}
