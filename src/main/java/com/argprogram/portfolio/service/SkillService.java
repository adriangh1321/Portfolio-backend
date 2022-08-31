package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.SkillCreateDto;
import com.argprogram.portfolio.dto.SkillDto;
import java.util.List;

public interface SkillService {

    List<SkillDto> getMeByToken();

    List<SkillDto> getAllByPortfolioId(Long id);

    void update(Long id, SkillDto dto);

    void save(SkillCreateDto dto);

    void delete(Long id);
}
