package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.mapper.PortfolioMapper;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.repository.PortfolioRepository;
import com.argprogram.portfolio.service.EducationService;
import com.argprogram.portfolio.service.ExperienceService;
import com.argprogram.portfolio.service.InterestService;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.ProjectService;
import com.argprogram.portfolio.service.SkillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

@Service

public class PortfolioServiceImpl implements PortfolioService {

    @Autowired
    private PortfolioRepository portfolioRepository;
    @Autowired
    private PortfolioMapper portfolioMapper;
    @Autowired
    @Lazy
    private ExperienceService experienceService;
    @Autowired
    @Lazy
    private EducationService educationService;
    @Autowired
    @Lazy
    private SkillService skillService;
    @Autowired
    @Lazy
    private ProjectService projectService;
    @Autowired
    @Lazy
    private InterestService interestService;

    @Override
    public PortfolioDto getById(Long id) {
        PortfolioDto dto = this.portfolioRepository.findById(id)
                .map(entity -> this.portfolioMapper.toPortfolioDto(entity))
                .orElseThrow();

        dto.setEducations(this.educationService.getAllByPortfolioId(id));
        dto.setExperiences(this.experienceService.getAllByPortfolioId(id));
        dto.setSkills(this.skillService.getAllByPortfolioId(id));
        dto.setProjects(this.projectService.getAllByPortfolioId(id));
        dto.setInterests(this.interestService.getAllByPortfolioId(id));

        return dto;
    }

    @Override
    public Portfolio getPortfolioById(Long id) {
        return this.portfolioRepository.findById(id).orElseThrow();

    }

    @Override
    public void patch(Long id, PortfolioBasicDto dto) {
        this.portfolioRepository.findById(id)
                .map(entity -> {
                    entity.setFirstname(dto.getFirstname());
                    entity.setLastname(dto.getLastname());
                    entity.setOcupation(dto.getOcupation());
                    entity.setCountry(dto.getCountry());
                    entity.setState(dto.getState());
                    entity.setImage(dto.getImage());
                    return this.portfolioRepository.save(entity);
                })
                .orElseThrow();
    }

    @Override
    public void patchAboutMe(Long id, PortfolioAboutDto dto) {
        this.portfolioRepository.findById(id)
                .map(entity -> {
                    entity.setAboutMe(dto.getAboutMe());
                    return this.portfolioRepository.save(entity);
                })
                .orElseThrow();
    }

}
