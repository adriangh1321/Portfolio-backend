package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.InterestCreateDto;
import com.argprogram.portfolio.dto.InterestDto;
import com.argprogram.portfolio.mapper.InterestMapper;
import com.argprogram.portfolio.model.Interest;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.repository.InterestRepository;
import com.argprogram.portfolio.service.InterestService;
import com.argprogram.portfolio.service.PortfolioService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class InterestServiceImpl implements InterestService {

    private final InterestRepository interestRepository;
    private final InterestMapper interestMapper;
    private final PortfolioService portfolioService;

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

    @Override
    public void save(InterestCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioById(dto.getIdPortfolio());
        Interest interest = this.interestMapper.toInterest(dto);
        interest.setPortfolio(portfolio);
        this.interestRepository.save(interest);
    }

    @Override
    public List<InterestDto> getAll() {
        return this.interestRepository.findAll().stream()
                .map(entity -> this.interestMapper.toInterestDto(entity))
                .collect(Collectors.toList());
    }

    @Override
    public void delete(Long id) {
        this.interestRepository.findById(id).ifPresent(this.interestRepository::delete);
    }

    @Override
    public void update(Long id, InterestDto dto) {
        this.interestRepository.findById(id)
                .map(interest -> {
                    interest.setName(dto.getName());
                    interest.setImage(dto.getImage());
                    return this.interestRepository.save(interest);
                })
                .orElseThrow();
    }
}
