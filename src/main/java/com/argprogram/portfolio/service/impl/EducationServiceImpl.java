package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.mapper.EducationMapper;
import com.argprogram.portfolio.repository.EducationRepository;
import com.argprogram.portfolio.service.EducationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EducationServiceImpl implements EducationService {
    
    private final EducationRepository educationRepository;
    private final EducationMapper educationMapper;

    @Override
    public EducationDto getById(Long id) {
        EducationDto dto = this.educationRepository.findById(id)
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .orElseThrow();
        return dto;

    }

}
