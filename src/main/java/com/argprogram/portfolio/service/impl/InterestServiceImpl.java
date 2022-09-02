package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.InterestCreateDto;
import com.argprogram.portfolio.dto.InterestDto;
import com.argprogram.portfolio.exception.NotFoundException;
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
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class InterestServiceImpl implements InterestService {

    private final InterestRepository interestRepository;
    private final InterestMapper interestMapper;
    private final PortfolioService portfolioService;

    @Transactional(readOnly=true)
    @Override
    public List<InterestDto> getMeByToken() {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        List<InterestDto> dtos = this.interestRepository.findAllByPortfolioId(portfolioId).stream()
                .map(entity -> this.interestMapper.toInterestDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Transactional(readOnly=true)
    @Override
    public List<InterestDto> getAllByPortfolioId(Long id) {
        List<InterestDto> dtos = this.interestRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.interestMapper.toInterestDto(entity))
                .collect(Collectors.toList());
        return dtos;

    }

    @Transactional
    @Override
    public void save(InterestCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioByUserLogged();
        Interest interest = this.interestMapper.toInterest(dto);
        interest.setPortfolio(portfolio);
        this.interestRepository.save(interest);
    }

    @Transactional
    @Override
    public void delete(Long id) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.interestRepository.findByInterestIdAndPortfolioId(id, portfolioId).ifPresent(this.interestRepository::delete);
    }

    @Transactional
    @Override
    public void update(Long id, InterestDto dto) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.interestRepository.findByInterestIdAndPortfolioId(id, portfolioId)
                .map(interest -> {
                    interest.setName(dto.getName());
                    interest.setImage(dto.getImage());
                    return this.interestRepository.save(interest);
                })
                .orElseThrow(() -> new NotFoundException("Interest with id " + id + " was not found in your portfolio"));
    }
}
