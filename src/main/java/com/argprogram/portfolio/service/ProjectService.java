package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.ProjectCreateDto;
import com.argprogram.portfolio.dto.ProjectDto;
import java.util.List;

public interface ProjectService {

    List<ProjectDto> getMeByToken();

    List<ProjectDto> getAllByPortfolioId(Long id);

    void update(Long id, ProjectDto dto);

    void save(ProjectCreateDto dto);

    void delete(Long id);
}
