package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.dto.EducationPutDto;
import com.argprogram.portfolio.exception.NotFoundException;
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
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class EducationServiceImpl implements EducationService {

    private final EducationRepository educationRepository;
    private final EducationMapper educationMapper;
    private final PortfolioService portfolioService;

    @Transactional(readOnly = true)
    @Override
    public List<EducationDto> getMeByToken() {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        List<EducationDto> dtos = this.educationRepository.findAllByPortfolioId(portfolioId).stream()
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Transactional(readOnly = true)
    @Override
    public List<EducationDto> getAllByPortfolioId(Long id) {
        List<EducationDto> dtos = this.educationRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Transactional
    @Override
    public void save(EducationDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioByUserLogged();
        Education education = this.educationMapper.toEducation(dto);
        education.setPortfolio(portfolio);
        this.educationRepository.save(education);
    }

    @Transactional
    @Override
    public void delete(Long id) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.educationRepository.findByEducationIdAndPortfolioId(id, portfolioId).ifPresent(this.educationRepository::delete);
    }

    @Transactional
    @Override
    public void update(Long id, EducationPutDto dto) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.educationRepository.findByEducationIdAndPortfolioId(id, portfolioId)
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
                .orElseThrow(() -> new NotFoundException("Education with id " + id + " was not found in your portfolio"));
    }

}
