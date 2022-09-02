package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.CurrentCompanyDto;
import com.argprogram.portfolio.mapper.CurrentCompanyMapper;
import com.argprogram.portfolio.model.CurrentCompany;
import com.argprogram.portfolio.repository.CurrentCompanyRepository;
import com.argprogram.portfolio.service.CurrentCompanyService;
import com.argprogram.portfolio.service.PortfolioService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CurrentCompanyServiceImpl implements CurrentCompanyService {

    private final CurrentCompanyRepository currentCompanyRepository;
    private final CurrentCompanyMapper currentCompanyMapper;
    private final PortfolioService portfolioService;

    @Override
    public CurrentCompanyDto getMeByToken() {
        CurrentCompany currentCompany = this.portfolioService.getPortfolioByUserLogged().getCurrentCompany();
        CurrentCompanyDto dto =this.currentCompanyMapper.toCurrentCompanyDto(currentCompany);
        return dto;
    }

    @Override
    public void update(CurrentCompanyDto dto) {
        CurrentCompany currentCompany = this.portfolioService.getPortfolioByUserLogged().getCurrentCompany();
        currentCompany.setName(dto.getName());
        currentCompany.setUrl(dto.getUrl());
        currentCompany.setImage(dto.getImage());
        this.currentCompanyRepository.save(currentCompany);
    }
}
