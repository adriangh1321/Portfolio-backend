package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ExperienceCreateDto;
import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.dto.ExperiencePutDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.ExperienceMapper;
import com.argprogram.portfolio.model.Experience;
import com.argprogram.portfolio.model.Location;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Region;
import com.argprogram.portfolio.repository.ExperienceRepository;
import com.argprogram.portfolio.service.ExperienceService;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.RegionService;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.ResolverStyle;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ExperienceServiceImpl implements ExperienceService {

    private final ExperienceRepository experienceRepository;
    private final ExperienceMapper experienceMapper;
    private final PortfolioService portfolioService;
    private final RegionService regionService;

    @Override
    public List<ExperienceDto> getMeByToken() {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        List<ExperienceDto> dtos = this.experienceRepository.findAllByPortfolioId(portfolioId).stream()
                .map(entity -> this.experienceMapper.toExperienceDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public List<ExperienceDto> getAllByPortfolioId(Long id) {
        List<ExperienceDto> dtos = this.experienceRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.experienceMapper.toExperienceDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public void update(Long id, ExperiencePutDto dto) {
        this.experienceRepository.findById(id)
                .map(experience -> {
                    experience.setCompany(dto.getCompany());
                    experience.setPosition(dto.getPosition());
                    experience.setDescription(dto.getDescription());
                    experience.setImage(dto.getImage());
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("uuuu-MM-dd").withResolverStyle(ResolverStyle.STRICT);
                    experience.setStartDate(LocalDate.parse(dto.getStartDate(), formatter));
                    if (dto.getEndDate() == null) {
                        experience.setEndDate(null);
                    } else {
                        experience.setEndDate(LocalDate.parse(dto.getEndDate(), formatter));
                    }

                    Location location = experience.getLocation();
                    location.setAddress(dto.getAddress());

                    Region region = this.regionService.getById(dto.getRegionId());
                    location.setRegion(region);

                    return this.experienceRepository.save(experience);
                })
                .orElseThrow();

    }

    @Override
    public void save(ExperienceCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioById(dto.getIdPortfolio());
        Experience experience = new Experience();
        experience.setPosition(dto.getPosition());
        experience.setCompany(dto.getCompany());
        experience.setDescription((dto.getDescription()));
        experience.setImage(dto.getImage());
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("uuuu-MM-dd").withResolverStyle(ResolverStyle.STRICT);
        if (dto.getStartDate() != null) {
            experience.setStartDate(LocalDate.parse(dto.getStartDate(), formatter));
        }

        if (dto.getEndDate() != null) {
            experience.setEndDate(LocalDate.parse(dto.getEndDate(), formatter));
        }
        Location location = new Location();
        location.setAddress(dto.getAddress());

        Region region = null;
        if (dto.getRegionId() != null) {
            region = this.regionService.getById(dto.getRegionId());
        }
        location.setRegion(region);
        experience.setLocation(location);

        experience.setPortfolio(portfolio);
        this.experienceRepository.save(experience);
    }

    @Override
    public void delete(Long id) {
        this.experienceRepository.findById(id).ifPresent(this.experienceRepository::delete);

    }

}
