package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioImageDto;
import com.argprogram.portfolio.dto.PortfolioProfileDto;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.User;
import java.util.List;

public interface PortfolioService {

    PortfolioDto getById(Long id);

    Portfolio getPortfolioById(Long id);

    void patchBasicInfo(Long id, PortfolioBasicDto dto);

    void patchAboutMe(Long id, PortfolioAboutDto dto);
    
    void patchBanner(PortfolioBannerDto dto);

    PortfolioAboutDto getAboutMe(Long id);

    PortfolioBasicDto getBasicInfo(Long id);
    
    PortfolioBannerDto getBanner();

    Portfolio save(User user);

    Portfolio getPortfolioByUserId(Long id);
    
    PortfolioDto getMeByToken();
    
    Portfolio getPortfolioByUserLogged();
    
    List<PortfolioProfileDto> getPortfolioProfiles();
    
    PortfolioDto getByUserNickname(String nickname);
    
    PortfolioImageDto getImage();
}
