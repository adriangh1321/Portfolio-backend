package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.mapper.PortfolioMapper;
import com.argprogram.portfolio.repository.PortfolioRepository;
import com.argprogram.portfolio.service.PortfolioService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PortfolioServiceImpl implements PortfolioService {

    private final PortfolioRepository portfolioRepository;
    private final PortfolioMapper portfolioMapper;

    @Override
    public PortfolioDto getById(Long id) {
        PortfolioDto dto = this.portfolioRepository.findById(id)
                .map(entity -> this.portfolioMapper.toPortfolioDto(entity))
                .orElseThrow();
        return dto;
    }

}
