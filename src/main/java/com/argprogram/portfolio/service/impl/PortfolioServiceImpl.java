package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioFiltersDto;
import com.argprogram.portfolio.dto.PortfolioImageDto;
import com.argprogram.portfolio.dto.PortfolioProfileDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.PortfolioMapper;
import com.argprogram.portfolio.model.ContactInformation;
import com.argprogram.portfolio.model.CurrentCompany;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.PortfolioRepository;
import com.argprogram.portfolio.repository.specifications.PortfolioSpecification;
import com.argprogram.portfolio.service.AuthService;
import com.argprogram.portfolio.service.EducationService;
import com.argprogram.portfolio.service.ExperienceService;
import com.argprogram.portfolio.service.InterestService;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.ProjectService;
import com.argprogram.portfolio.service.SkillService;
import java.util.List;
import java.util.stream.Collectors;
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
    @Autowired
    private PortfolioSpecification portfolioSpecification;

    @Override
    public PortfolioDto getById(Long id) {
        PortfolioDto dto = this.portfolioMapper.toPortfolioDto(this.getPortfolioById(id));

        dto.setEducations(this.educationService.getAllByPortfolioId(id));
        dto.setExperiences(this.experienceService.getAllByPortfolioId(id));
        dto.setSkills(this.skillService.getAllByPortfolioId(id));
        dto.setProjects(this.projectService.getAllByPortfolioId(id));
        dto.setInterests(this.interestService.getAllByPortfolioId(id));

        return dto;
    }

    @Override
    public Portfolio getPortfolioById(Long id) {
        return this.portfolioRepository.findById(id).orElseThrow(() -> new NotFoundException("Portfolio not found"));

    }

    @Override
    public void patchBasicInfo(Long id, PortfolioBasicDto dto) {
        Portfolio entity = this.getPortfolioById(id);
        entity.setFirstname(dto.getFirstname());
        entity.setLastname(dto.getLastname());
        entity.setOccupation(dto.getOccupation());
        entity.setCountry(dto.getCountry());
        entity.setState(dto.getState());
        entity.setImage(dto.getImage());
        this.portfolioRepository.save(entity);

    }

    @Override
    public void patchAboutMe(Long id, PortfolioAboutDto dto) {
        Portfolio entity = this.getPortfolioById(id);
        entity.setAboutMe(dto.getAboutMe());
        this.portfolioRepository.save(entity);

    }

    @Override
    public PortfolioAboutDto getAboutMe(Long id) {
        PortfolioAboutDto dto = this.portfolioMapper.toPortfolioAboutDto(this.getPortfolioById(id));
        return dto;
    }

    @Override
    public PortfolioBasicDto getBasicInfo(Long id) {
        PortfolioBasicDto dto = this.portfolioMapper.toPortfolioBasicDto(this.getPortfolioById(id));
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
        PortfolioDto dto = this.portfolioMapper.toPortfolioDto(this.getPortfolioByUserLogged());

        dto.setEducations(this.educationService.getAllByPortfolioId(dto.getId()));
        dto.setExperiences(this.experienceService.getAllByPortfolioId(dto.getId()));
        dto.setSkills(this.skillService.getAllByPortfolioId(dto.getId()));
        dto.setProjects(this.projectService.getAllByPortfolioId(dto.getId()));
        dto.setInterests(this.interestService.getAllByPortfolioId(dto.getId()));

        return dto;
    }

    @Override
    public PortfolioBannerDto getBanner() {
        Portfolio portfolio = this.getPortfolioByUserLogged();
        return this.portfolioMapper.toPortfolioBannerDto(portfolio);
    }

    @Override
    public void patchBanner(PortfolioBannerDto dto) {
        Portfolio portfolio = this.getPortfolioByUserLogged();
        portfolio.setBanner(dto.getBanner());
        this.portfolioRepository.save(portfolio);

    }

    @Override
    public Portfolio getPortfolioByUserLogged() {
        User user = this.authService.getUserLogged();
        return this.getPortfolioByUserId(user.getId());
    }

    @Override
    public List<PortfolioProfileDto> getPortfolioProfiles() {
        return this.portfolioRepository.findAll().stream()
                .map(portfolio -> {
                    PortfolioProfileDto dto = new PortfolioProfileDto();
                    dto.setFirstname(portfolio.getFirstname());
                    dto.setLastname(portfolio.getLastname());
                    dto.setImage(portfolio.getImage());
                    dto.setNickname(portfolio.getUser().getNickname());
                    dto.setCountry(portfolio.getCountry());
                    dto.setState(portfolio.getState());
                    dto.setOccupation(portfolio.getOccupation());
                    return dto;
                })
                .collect(Collectors.toList());
    }

    @Override
    public PortfolioDto getByUserNickname(String nickname) {
        PortfolioDto dto = this.portfolioRepository.findByUserNickname(nickname)
                .map(entity -> this.portfolioMapper.toPortfolioDto(entity))
                .orElseThrow(() -> new NotFoundException("Portfolio not found"));

        dto.setEducations(this.educationService.getAllByPortfolioId(dto.getId()));
        dto.setExperiences(this.experienceService.getAllByPortfolioId(dto.getId()));
        dto.setSkills(this.skillService.getAllByPortfolioId(dto.getId()));
        dto.setProjects(this.projectService.getAllByPortfolioId(dto.getId()));
        dto.setInterests(this.interestService.getAllByPortfolioId(dto.getId()));

        return dto;

    }

    @Override
    public PortfolioImageDto getImage() {
        return this.portfolioMapper.toPortfolioImageDto(this.getPortfolioByUserLogged());
    }

    @Override
    public List<PortfolioProfileDto> getPortfoliosByFilters(String name, String occupation, String country, String state, String order) {
        PortfolioFiltersDto filtersDto = new PortfolioFiltersDto(name, occupation, country, state, order);
        return this.portfolioRepository.findAll(this.portfolioSpecification.getByFilters(filtersDto)).stream()
                .map(portfolio -> {
                    PortfolioProfileDto dto = new PortfolioProfileDto();
                    dto.setFirstname(portfolio.getFirstname());
                    dto.setLastname(portfolio.getLastname());
                    dto.setImage(portfolio.getImage());
                    dto.setNickname(portfolio.getUser().getNickname());
                    dto.setCountry(portfolio.getCountry());
                    dto.setState(portfolio.getState());
                    dto.setOccupation(portfolio.getOccupation());
                    return dto;
                })
                .collect(Collectors.toList());

    }

}
