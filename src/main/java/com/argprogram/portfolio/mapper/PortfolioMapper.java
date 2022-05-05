package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.model.Portfolio;
import org.mapstruct.Mapper;

@Mapper
public interface PortfolioMapper {

    PortfolioDto toPortfolioDto(Portfolio portfolio);

    Portfolio toPortfolio(PortfolioDto portfolioDto);
}
