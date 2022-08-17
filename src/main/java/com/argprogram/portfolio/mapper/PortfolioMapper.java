package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioBasicPatchDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioImageDto;
import com.argprogram.portfolio.model.Portfolio;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface PortfolioMapper {

    PortfolioDto toPortfolioDto(Portfolio portfolio);

    Portfolio toPortfolio(PortfolioDto portfolioDto);

    PortfolioAboutDto toPortfolioAboutDto(Portfolio portfolio);

    
    PortfolioBasicDto toPortfolioBasicDto(Portfolio portfolio);

    PortfolioBannerDto toPortfolioBannerDto(Portfolio portfolio);

    PortfolioImageDto toPortfolioImageDto(Portfolio portfolio);

}
