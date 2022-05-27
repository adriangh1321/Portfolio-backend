package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.CurrentCompanyDto;
import com.argprogram.portfolio.mapper.CurrentCompanyMapper;
import com.argprogram.portfolio.repository.CurrentCompanyRepository;
import com.argprogram.portfolio.service.CurrentCompanyService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CurrentCompanyServiceImpl implements CurrentCompanyService {

    private final CurrentCompanyRepository currentCompanyRepository;
    private final CurrentCompanyMapper currentCompanyMapper;

    @Override
    public CurrentCompanyDto getById(Long id) {
        CurrentCompanyDto dto = this.currentCompanyRepository.findById(id)
                .map(entity -> this.currentCompanyMapper.toCurrentCompanyDto(entity))
                .orElseThrow();
        return dto;
    }

    @Override
    public void update(Long id, CurrentCompanyDto dto) {
        this.currentCompanyRepository.findById(id)
                .map(currentCompany -> {
                    currentCompany.setName(dto.getName());
                    currentCompany.setUrl(dto.getUrl());
                    currentCompany.setImage(dto.getImage());
                    return this.currentCompanyRepository.save(currentCompany);
                })
                .orElseThrow();
    }
}
