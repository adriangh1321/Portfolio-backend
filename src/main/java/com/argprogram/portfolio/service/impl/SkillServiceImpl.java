package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.SkillDto;
import com.argprogram.portfolio.mapper.SkillMapper;
import com.argprogram.portfolio.repository.SkillRepository;
import com.argprogram.portfolio.service.SkillService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class SkillServiceImpl implements SkillService {

    private final SkillRepository skillRepository;
    private final SkillMapper skillMapper;

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

}
