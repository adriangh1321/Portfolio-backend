package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.EducationCreateDto;
import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.dto.SkillCreateDto;
import com.argprogram.portfolio.dto.SkillDto;
import com.argprogram.portfolio.mapper.SkillMapper;
import com.argprogram.portfolio.model.Education;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Skill;
import com.argprogram.portfolio.repository.SkillRepository;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.SkillService;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.ResolverStyle;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SkillServiceImpl implements SkillService {

    private final SkillRepository skillRepository;
    private final SkillMapper skillMapper;
    private final PortfolioService portfolioService;

    @Override
    public SkillDto getById(Long id) {
        SkillDto dto = this.skillRepository.findById(id)
                .map(entity -> this.skillMapper.toSkillDto(entity))
                .orElseThrow();
        return dto;
    }

    @Override
    public List<SkillDto> getAllByPortfolioId(Long id) {
        List<SkillDto> dtos = this.skillRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.skillMapper.toSkillDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public void save(SkillCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioById(dto.getIdPortfolio());
        Skill skill = this.skillMapper.toSkill(dto);
        skill.setPortfolio(portfolio);
        this.skillRepository.save(skill);
    }

    @Override
    public List<SkillDto> getAll() {
        return this.skillRepository.findAll().stream()
                .map(entity -> this.skillMapper.toSkillDto(entity))
                .collect(Collectors.toList());
    }

    @Override
    public void delete(Long id) {
        this.skillRepository.findById(id).ifPresent(this.skillRepository::delete);
    }

    @Override
    public void update(Long id, SkillDto dto) {
        this.skillRepository.findById(id)
                .map(skill -> {
                    skill.setType(dto.getType());
                    skill.setName(dto.getName());
                    skill.setPercent(dto.getPercent());

                    return this.skillRepository.save(skill);
                })
                .orElseThrow();
    }

}
