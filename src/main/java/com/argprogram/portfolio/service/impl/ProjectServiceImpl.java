package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ProjectCreateDto;
import com.argprogram.portfolio.dto.ProjectDto;
import com.argprogram.portfolio.exception.NotFoundException;
import com.argprogram.portfolio.mapper.ProjectMapper;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Project;
import com.argprogram.portfolio.repository.ProjectRepository;
import com.argprogram.portfolio.service.PortfolioService;
import com.argprogram.portfolio.service.ProjectService;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.ResolverStyle;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final ProjectMapper projectMapper;
    private final PortfolioService portfolioService;

    @Override
    public List<ProjectDto> getMeByToken() {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        List<ProjectDto> dtos = this.projectRepository.findAllByPortfolioId(portfolioId).stream()
                .map(entity -> this.projectMapper.toProjectDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public List<ProjectDto> getAllByPortfolioId(Long id) {
        List<ProjectDto> dtos = this.projectRepository.findAllByPortfolioId(id).stream()
                .map(entity -> this.projectMapper.toProjectDto(entity))
                .collect(Collectors.toList());
        return dtos;
    }

    @Override
    public void save(ProjectCreateDto dto) {
        Portfolio portfolio = this.portfolioService.getPortfolioById(dto.getIdPortfolio());
        Project project = this.projectMapper.toProject(dto);
        project.setPortfolio(portfolio);
        this.projectRepository.save(project);
    }

    @Override
    public void delete(Long id) {
        this.projectRepository.findById(id).ifPresent(this.projectRepository::delete);
    }

    @Override
    public void update(Long id, ProjectDto dto) {
        Long portfolioId = this.portfolioService.getPortfolioByUserLogged().getId();
        this.projectRepository.findByProjectIdAndPortfolioId(id, portfolioId)
                .map(project -> {
                    project.setName(dto.getName());
                    project.setDescription(dto.getDescription());
                    project.setImage(dto.getImage());
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("uuuu-MM-dd").withResolverStyle(ResolverStyle.STRICT);
                    project.setStartDate(LocalDate.parse(dto.getStartDate(), formatter));
                    if (dto.getEndDate() == null) {
                        project.setEndDate(null);
                    } else {
                        project.setEndDate(LocalDate.parse(dto.getEndDate(), formatter));
                    }
                    project.setUrl(dto.getUrl());

                    return this.projectRepository.save(project);
                })
                .orElseThrow(() -> new NotFoundException("Project with id " + id + " was not found in your portfolio"));
    }
}
