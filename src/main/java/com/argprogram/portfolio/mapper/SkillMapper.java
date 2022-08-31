package com.argprogram.portfolio.mapper;


import com.argprogram.portfolio.dto.SkillDto;
import com.argprogram.portfolio.model.Skill;
import org.mapstruct.Mapper;

@Mapper
public interface SkillMapper {

    SkillDto toSkillDto(Skill skill);

    Skill toSkill(SkillDto skillDto);

}
