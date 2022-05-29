package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.InterestCreateDto;
import com.argprogram.portfolio.dto.InterestDto;
import java.util.List;

public interface InterestService {

    InterestDto getById(Long id);

    List<InterestDto> getAllByPortfolioId(Long id);

    List<InterestDto> getAll();

    void update(Long id, InterestDto dto);

    void save(InterestCreateDto dto);

    void delete(Long id);
}
