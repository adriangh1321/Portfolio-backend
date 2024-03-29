package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.PortfolioAboutDto;
import com.argprogram.portfolio.dto.PortfolioBannerDto;
import com.argprogram.portfolio.dto.PortfolioBasicDto;
import com.argprogram.portfolio.dto.PortfolioBasicPatchDto;
import com.argprogram.portfolio.dto.PortfolioDto;
import com.argprogram.portfolio.dto.PortfolioFiltersDto;
import com.argprogram.portfolio.dto.PortfolioImageDto;
import com.argprogram.portfolio.dto.PortfolioProfileDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.PortfolioMapper;
import com.argprogram.portfolio.model.ContactInformation;
import com.argprogram.portfolio.model.CurrentCompany;
import com.argprogram.portfolio.model.Location;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Region;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.PortfolioRepository;
import com.argprogram.portfolio.repository.specifications.PortfolioSpecification;
import com.argprogram.portfolio.service.AuthService;
import com.argprogram.portfolio.service.EducationService;
import com.argprogram.portfolio.service.ExperienceService;
import com.argprogram.portfolio.service.InterestService;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.ProjectService;
import com.argprogram.portfolio.service.RegionService;
import com.argprogram.portfolio.service.SkillService;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    @Autowired
    private RegionService regionService;

    @Transactional(readOnly=true)
    @Override
    public Portfolio getPortfolioById(Long id) {
        return this.portfolioRepository.findById(id).orElseThrow(() -> new NotFoundException("Portfolio not found"));

    }

    @Transactional
    @Override
    public void patchBasicInfo(PortfolioBasicPatchDto dto) {
        Portfolio entity = this.getPortfolioByUserLogged();
        entity.setFirstname(dto.getFirstname());
        entity.setLastname(dto.getLastname());
        entity.setOccupation(dto.getOccupation());
        Location location = entity.getLocation();
        location.setAddress(dto.getAddress());
        Region region = null;
        if (dto.getRegionId() != null) {
            region = this.regionService.getById(dto.getRegionId());
        }
        location.setRegion(region);

        entity.setImage(dto.getImage());
        this.portfolioRepository.save(entity);

    }

    @Transactional
    @Override
    public void patchAboutMe( PortfolioAboutDto dto) {
        Portfolio portfolio = this.getPortfolioByUserLogged();
        portfolio.setAboutMe(dto.getAboutMe());
        this.portfolioRepository.save(portfolio);
    }
    
    @Transactional(readOnly=true)
    @Override
    public PortfolioAboutDto getAboutMe() {
        PortfolioAboutDto dto = this.portfolioMapper.toPortfolioAboutDto(this.getPortfolioByUserLogged());
        return dto;
    }
    
    @Transactional(readOnly=true)
    @Override
    public PortfolioBasicDto getBasicInfo() {
        PortfolioBasicDto dto = this.portfolioMapper.toPortfolioBasicDto(this.getPortfolioByUserLogged());
        return dto;
    }

    @Transactional
    @Override
    public Portfolio save(User user) {
        Portfolio portfolio = new Portfolio();
        ContactInformation contactInformation = new ContactInformation();
        CurrentCompany currentCompany = new CurrentCompany();
        Location location = new Location();
        portfolio.setContactInformation(contactInformation);
        portfolio.setCurrentCompany(currentCompany);
        portfolio.setLocation(location);
        portfolio.setUser(user);
        return this.portfolioRepository.save(portfolio);
    }

    @Transactional(readOnly=true)
    @Override
    public Portfolio getPortfolioByUserId(Long idUser) {
        return this.portfolioRepository.findByUserId(idUser).orElseThrow(() -> new NotFoundException("Portfolio not found"));
    }

    @Transactional(readOnly=true)
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

    @Transactional(readOnly=true)
    @Override
    public PortfolioBannerDto getBanner() {
        Portfolio portfolio = this.getPortfolioByUserLogged();
        return this.portfolioMapper.toPortfolioBannerDto(portfolio);
    }

    @Transactional
    @Override
    public void patchBanner(PortfolioBannerDto dto) {
        Portfolio portfolio = this.getPortfolioByUserLogged();
        portfolio.setBanner(dto.getBanner());
        this.portfolioRepository.save(portfolio);

    }
    
    @Transactional(readOnly=true)
    @Override
    public Portfolio getPortfolioByUserLogged() {
        User user = this.authService.getUserLogged();
        return this.getPortfolioByUserId(user.getId());
    }

    @Transactional(readOnly=true)
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

    @Transactional(readOnly=true)
    @Override
    public PortfolioImageDto getImage() {
        return this.portfolioMapper.toPortfolioImageDto(this.getPortfolioByUserLogged());
    }

    @Transactional(readOnly=true)
    @Override
    public List<PortfolioProfileDto> getPortfoliosByFilters(String find, String country, String state, String order) {
        PortfolioFiltersDto filtersDto = new PortfolioFiltersDto(find, country, state, order);
        return this.portfolioRepository.findAll(this.portfolioSpecification.getByFilters(filtersDto)).stream()
                .map(portfolio -> {
                    PortfolioProfileDto dto = new PortfolioProfileDto();
                    dto.setFirstname(portfolio.getFirstname());
                    dto.setLastname(portfolio.getLastname());
                    dto.setImage(portfolio.getImage());
                    dto.setNickname(portfolio.getUser().getNickname());
                    String regionName = null;
                    String countryName = null;
                    Region region = portfolio.getLocation().getRegion();
                    if (region != null) {
                        regionName = region.getName();
                        countryName = region.getCountry().getName();
                    }
                    dto.setRegion(regionName);
                    dto.setCountry(countryName);

                    dto.setOccupation(portfolio.getOccupation());
                    return dto;
                })
                .collect(Collectors.toList());

    }

}
