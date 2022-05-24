package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.ProjectCreateDto;
import com.argprogram.portfolio.dto.ProjectDto;
import java.util.List;

public interface ProjectService {

    ProjectDto getById(Long id);

    List<ProjectDto> getAllByPortfolioId(Long id);

    List<ProjectDto> getAll();

    void update(Long id, ProjectDto dto);

    void save(ProjectCreateDto dto);

    void delete(Long id);
}
