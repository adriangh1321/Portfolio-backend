package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.mapper.EducationMapper;
import com.argprogram.portfolio.model.Education;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.repository.EducationRepository;
import com.argprogram.portfolio.service.EducationService;
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
    public List<EducationDto> getMeByToken() {
        Long portfolioId=this.portfolioService.getPortfolioByUserLogged().getId();
        List<EducationDto> dtos = this.educationRepository.findAllByPortfolioId(portfolioId).stream()
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .collect(Collectors.toList());
        return dtos;
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
    public void delete(Long id) {
        this.educationRepository.findById(id).ifPresent(this.educationRepository::delete);
    }

    @Override
    public void update(Long id, EducationDto dto) {
        this.educationRepository.findById(id)
                .map(education -> {
                    education.setTitle(dto.getTitle());
                    education.setInstitute(dto.getInstitute());
                    education.setImage(dto.getImage());

                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("uuuu-MM-dd").withResolverStyle(ResolverStyle.STRICT);
                    education.setStartDate(LocalDate.parse(dto.getStartDate(), formatter));
                    if (dto.getEndDate() == null) {
                        education.setEndDate(null);
                    } else {
                        education.setEndDate(LocalDate.parse(dto.getEndDate(), formatter));
                    }

                    return this.educationRepository.save(education);
                })
                .orElseThrow();
    }

}
