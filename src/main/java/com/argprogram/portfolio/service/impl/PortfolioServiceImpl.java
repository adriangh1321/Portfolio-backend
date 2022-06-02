package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.CurrentCompanyDto;
import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.PortfolioMapper;
import com.argprogram.portfolio.model.ContactInformation;
import com.argprogram.portfolio.model.CurrentCompany;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.PortfolioRepository;
import com.argprogram.portfolio.service.AuthService;
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
    @Autowired
    private AuthService authService;

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

    @Override
    public PortfolioAboutDto getAboutMe(Long id) {
        PortfolioAboutDto dto = this.portfolioRepository.findById(id)
                .map(entity -> this.portfolioMapper.toPortfolioAboutDto(entity))
                .orElseThrow();
        return dto;
    }

    @Override
    public PortfolioBasicDto getBasicInfo(Long id) {
        PortfolioBasicDto dto = this.portfolioRepository.findById(id)
                .map(entity -> this.portfolioMapper.toPortfolioBasicDto(entity))
                .orElseThrow();
        return dto;
    }

    @Override
    public Portfolio save(User user) {
        Portfolio portfolio = new Portfolio();
        ContactInformation contactInformation = new ContactInformation();
        CurrentCompany currentCompany = new CurrentCompany();
        portfolio.setContactInformation(contactInformation);
        portfolio.setCurrentCompany(currentCompany);
        portfolio.setUser(user);
        return this.portfolioRepository.save(portfolio);
    }

    @Override
    public Portfolio getPortfolioByUserId(Long idUser) {
        return this.portfolioRepository.findByUserId(idUser).orElseThrow(() -> new NotFoundException("Portfolio not found"));
    }

    @Override
    public PortfolioDto getMeByToken() {
        User user = this.authService.getUserLogged();
        PortfolioDto dto = this.portfolioRepository.findByUserId(user.getId())
                .map(entity -> this.portfolioMapper.toPortfolioDto(entity))
                .orElseThrow();

        dto.setEducations(this.educationService.getAllByPortfolioId(dto.getId()));
        dto.setExperiences(this.experienceService.getAllByPortfolioId(dto.getId()));
        dto.setSkills(this.skillService.getAllByPortfolioId(dto.getId()));
        dto.setProjects(this.projectService.getAllByPortfolioId(dto.getId()));
        dto.setInterests(this.interestService.getAllByPortfolioId(dto.getId()));

        return dto;
    }

}
