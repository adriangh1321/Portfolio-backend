
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.model.Portfolio;


public interface PortfolioService {
    
    PortfolioDto getById(Long id);
    Portfolio getPortfolioById(Long id);
}
