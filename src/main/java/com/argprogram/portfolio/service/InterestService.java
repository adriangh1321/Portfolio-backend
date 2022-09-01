package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.InterestCreateDto;
import com.argprogram.portfolio.dto.InterestDto;
import java.util.List;

public interface InterestService {

    List<InterestDto> getMeByToken();

    List<InterestDto> getAllByPortfolioId(Long id);

    void update(Long id, InterestDto dto);

    void save(InterestCreateDto dto);

    void delete(Long id);
}
