
package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ExperienceDto;
import com.argprogram.portfolio.mapper.ExperienceMapper;
import com.argprogram.portfolio.repository.ExperienceRepository;
import com.argprogram.portfolio.service.ExperienceService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ExperienceServiceImpl implements ExperienceService {
    
    private final ExperienceRepository experienceRepository;
    private final ExperienceMapper experienceMapper;

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
    
}
