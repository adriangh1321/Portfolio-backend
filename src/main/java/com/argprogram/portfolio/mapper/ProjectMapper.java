package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.ProjectCreateDto;
import com.argprogram.portfolio.dto.ProjectDto;
import com.argprogram.portfolio.model.Project;
import org.mapstruct.Mapper;

@Mapper
public interface ProjectMapper {

    ProjectDto toProjectDto(Project project);

    Project toProject(ProjectDto projectoDto);

    Project toProject(ProjectCreateDto projectoCreateDto);
}
