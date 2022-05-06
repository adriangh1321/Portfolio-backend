package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.mapper.EducationMapper;
import com.argprogram.portfolio.mapper.ExperienceMapper;
import com.argprogram.portfolio.mapper.InterestMapper;
import com.argprogram.portfolio.mapper.PortfolioMapper;
import com.argprogram.portfolio.mapper.ProjectMapper;
import com.argprogram.portfolio.mapper.SkillMapper;
import com.argprogram.portfolio.repository.PortfolioRepository;
import com.argprogram.portfolio.service.EducationService;
import com.argprogram.portfolio.service.ExperienceService;
import com.argprogram.portfolio.service.InterestService;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.ProjectService;
import com.argprogram.portfolio.service.SkillService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PortfolioServiceImpl implements PortfolioService {

    private final PortfolioRepository portfolioRepository;
    private final PortfolioMapper portfolioMapper;
    private final ExperienceMapper experienceMapper;
    private final EducationMapper educationMapper;
    private final SkillMapper skillMapper;
    private final ProjectMapper projectMapper;
    private final InterestMapper interestMapper;
    private final ExperienceService experienceService;
    private final EducationService educationService;
    private final SkillService skillService;
    private final ProjectService projectService;
    private final InterestService interestService;

    @Override
    public PortfolioDto getById(Long id) {
        PortfolioDto dto = this.portfolioRepository.findById(id)
                .map(entity -> this.portfolioMapper.toPortfolioDto(entity))
                .orElseThrow();
        
        dto.setEducations(this.educationService.getAllByPortfolioId(id));
        dto.setExperiences(this.experienceService.getAllByPortfolioId(id));
        dto.setSkills(this.skillService.getAllByPortfolioId(id));
        
        return dto;
    }

}
