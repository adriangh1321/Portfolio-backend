package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.SkillDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.SkillMapper;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Skill;
import com.argprogram.portfolio.repository.SkillRepository;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.SkillService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class SkillServiceImpl implements SkillService {

    private final SkillRepository skillRepository;
    private final SkillMapper skillMapper;
    private final PortfolioService portfolioService;

    @Transactional(readOnly=true)
    @Override
    public List<SkillDto> getMeByToken() {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        List<SkillDto> dtos = this.skillRepository.findAllByPortfolioId(portfolioId).stream()
                .map(entity -> this.skillMapper.toSkillDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Transactional(readOnly=true)
    @Override
    public List<SkillDto> getAllByPortfolioId(Long id) {
        List<SkillDto> dtos = this.skillRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.skillMapper.toSkillDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Transactional
    @Override
    public void save(SkillDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioByUserLogged();
        Skill skill = this.skillMapper.toSkill(dto);
        skill.setPortfolio(portfolio);
        this.skillRepository.save(skill);
    }

    @Transactional
    @Override
    public void delete(Long id) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.skillRepository.findBySkillIdAndPortfolioId(id, portfolioId).ifPresent(this.skillRepository::delete);
    }

    @Transactional
    @Override
    public void update(Long id, SkillDto dto) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.skillRepository.findBySkillIdAndPortfolioId(id, portfolioId)
                .map(skill -> {
                    skill.setType(dto.getType());
                    skill.setName(dto.getName());
                    skill.setPercent(dto.getPercent());

                    return this.skillRepository.save(skill);
                })
                .orElseThrow(() -> new NotFoundException("Skill with id " + id + " was not found in your portfolio"));
    }

}
