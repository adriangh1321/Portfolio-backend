package com.argprogram.portfolio.dto;

import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PortfolioDto {

    private Long id;
    
    @NotBlank
    private String firstname;
    
    @NotBlank
    private String lastname;
    
    @NotBlank
    private String occupation;
    
    private LocationDto location;

    private String image;
    
    private String banner;

    @NotBlank
    private String aboutMe;

    private CurrentCompanyDto currentCompany;

    private ContactInformationDto contactInformation;

    private List<ExperienceDto> experiences = new ArrayList();

    private List<EducationDto> educations = new ArrayList();

    private List<SkillDto> skills = new ArrayList();

    private List<ProjectDto> projects = new ArrayList();

    private List<InterestDto> interests = new ArrayList();

}
