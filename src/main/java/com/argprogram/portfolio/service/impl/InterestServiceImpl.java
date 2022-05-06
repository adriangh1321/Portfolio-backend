package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.InterestDto;
import com.argprogram.portfolio.mapper.InterestMapper;
import com.argprogram.portfolio.repository.InterestRepository;
import com.argprogram.portfolio.service.InterestService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class InterestServiceImpl implements InterestService {

    private final InterestRepository interestRepository;
    private final InterestMapper interestMapper;

    @Override
    public InterestDto getById(Long id) {
        InterestDto dto = this.interestRepository.findById(id)
                .map(entity -> this.interestMapper.toInterestDto(entity))
                .orElseThrow();
        return dto;

    }

    @Override
    public List<InterestDto> getAllByPortfolioId(Long id) {
        List<InterestDto> dtos = this.interestRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.interestMapper.toInterestDto(entity))
                .collect(Collectors.toList());
        return dtos;

    }
}
