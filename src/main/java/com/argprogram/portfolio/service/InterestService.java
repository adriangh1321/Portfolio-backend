
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.InterestDto;
import java.util.List;


public interface InterestService {
    
    InterestDto getById(Long id);
    
    List<InterestDto> getAllByPortfolioId(Long id);
}
