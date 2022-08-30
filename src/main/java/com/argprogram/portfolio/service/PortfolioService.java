package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioBasicPatchDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioImageDto;
import com.argprogram.portfolio.dto.PortfolioProfileDto;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.User;
import java.util.List;

public interface PortfolioService {

    PortfolioDto getById(Long id);

    Portfolio getPortfolioById(Long id);

    void patchBasicInfo(PortfolioBasicPatchDto dto);

    void patchAboutMe(PortfolioAboutDto dto);
    
    void patchBanner(PortfolioBannerDto dto);

    PortfolioAboutDto getAboutMe();

    PortfolioBasicDto getBasicInfo();
    
    PortfolioBannerDto getBanner();

    Portfolio save(User user);

    Portfolio getPortfolioByUserId(Long id);
    
    PortfolioDto getMeByToken();
    
    Portfolio getPortfolioByUserLogged();
    
    List<PortfolioProfileDto> getPortfolioProfiles();
    
    PortfolioDto getByUserNickname(String nickname);
    
    PortfolioImageDto getImage();
    
    List<PortfolioProfileDto> getPortfoliosByFilters(String find ,String country,String state, String order);
}
