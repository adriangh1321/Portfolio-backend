package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ExperienceCreateDto;
import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.ExperienceMapper;
import com.argprogram.portfolio.model.Experience;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.repository.ExperienceRepository;
import com.argprogram.portfolio.service.ExperienceService;
import com.argprogram.portfolio.service.PortfolioService;
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

    @Override
    public ExperienceDto getById(Long id) {
        ExperienceDto dto = this.experienceRepository.findById(id)
                .map(entity -> this.experienceMapper.toExperienceDto(entity))
                .orElseThrow();
        return dto;
    }

    @Override
    public List<ExperienceDto> getAllByPortfolioId(Long id) {
        List<ExperienceDto> dtos = this.experienceRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.experienceMapper.toExperienceDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public List<ExperienceDto> getAll() {
        return this.experienceRepository.findAll().stream()
                .map(entity -> this.experienceMapper.toExperienceDto(entity))
                .collect(Collectors.toList());
    }

    @Override
    public void update(Long id, ExperienceDto dto) {
        this.experienceRepository.findById(id)
                .map(experience -> {
                    experience.setCompany(dto.getCompany());
                    experience.setPosition(dto.getPosition());
                    experience.setCountry(dto.getCountry());
                    experience.setDescription(dto.getDescription());
                    experience.setImage(dto.getImage());
                    experience.setState(dto.getState());
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("uuuu-MM-dd").withResolverStyle(ResolverStyle.STRICT);
                    experience.setStartDate(LocalDate.parse(dto.getStartDate(), formatter));
                    if (dto.getEndDate() == null) {
                        experience.setEndDate(null);
                    }else{
                        experience.setEndDate(LocalDate.parse(dto.getEndDate(), formatter));
                    }
                    
                    return this.experienceRepository.save(experience);
                })
                .orElseThrow();

    }

    @Override
    public void save(ExperienceCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioById(dto.getIdPortfolio());
        Experience experience = this.experienceMapper.toExperience(dto);
        experience.setPortfolio(portfolio);
        this.experienceRepository.save(experience);
    }

    @Override
    public void delete(Long id) {
        this.experienceRepository.findById(id).ifPresent(this.experienceRepository::delete);
                
    }

}
