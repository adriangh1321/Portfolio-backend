package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.EducationDto;
import com.argprogram.portfolio.mapper.EducationMapper;
import com.argprogram.portfolio.model.Education;
import com.argprogram.portfolio.repository.EducationRepository;
import com.argprogram.portfolio.service.EducationService;
import java.util.List;
import java.util.stream.Collectors;
import static java.util.stream.Collectors.toList;
import java.util.stream.StreamSupport;
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

    @Override
    public List<EducationDto> getAllByPortfolioId(Long id) {
        List<EducationDto> dtos = this.educationRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.educationMapper.toEducationDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

}
