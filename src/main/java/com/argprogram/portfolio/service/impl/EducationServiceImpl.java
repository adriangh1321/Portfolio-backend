package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.mapper.EducationMapper;
import com.argprogram.portfolio.model.Education;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.repository.EducationRepository;
import com.argprogram.portfolio.service.EducationService;
import com.argprogram.portfolio.service.PortfolioService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EducationServiceImpl implements EducationService {

    private final EducationRepository educationRepository;
    private final EducationMapper educationMapper;
    private final PortfolioService portfolioService;

    @Override
    public EducationDto getById(Long id) {
        EducationDto dto = this.educationRepository.findById(id)
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .orElseThrow();
        return dto;

    }

    @Override
    public List<EducationDto> getAllByPortfolioId(Long id) {
        List<EducationDto> dtos = this.educationRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public void save(EducationCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioById(dto.getIdPortfolio());
        Education education = this.educationMapper.toEducation(dto);
        education.setPortfolio(portfolio);
        this.educationRepository.save(education);
    }

    @Override
    public List<EducationDto> getAll() {
    return this.educationRepository.findAll().stream()
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .collect(Collectors.toList());
    }

    @Override
    public void delete(Long id) {
         this.educationRepository.findById(id).ifPresent(this.educationRepository::delete);
    }

}
