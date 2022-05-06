package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ProjectDto;
import com.argprogram.portfolio.mapper.ProjectMapper;
import com.argprogram.portfolio.repository.ProjectRepository;
import com.argprogram.portfolio.service.ProjectService;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final ProjectMapper projectMapper;

    @Override
    public ProjectDto getById(Long id) {
        ProjectDto dto = this.projectRepository.findById(id)
                .map(entity -> this.projectMapper.toProjectDto(entity))
                .orElseThrow();
        return dto;
    }
    
    @Override
    public List<ProjectDto> getAllByPortfolioId(Long id) {
        List<ProjectDto> dtos = this.projectRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.projectMapper.toProjectDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

}
