package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.User;

public interface PortfolioService {

    PortfolioDto getById(Long id);

    Portfolio getPortfolioById(Long id);

    void patch(Long id, PortfolioBasicDto dto);

    void patchAboutMe(Long id, PortfolioAboutDto dto);

    PortfolioAboutDto getAboutMe(Long id);

    PortfolioBasicDto getBasicInfo(Long id);
    
    Portfolio save (User user);
}
