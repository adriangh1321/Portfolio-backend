package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.ContactInformationDto;
import com.argprogram.portfolio.model.ContactInformation;
import org.mapstruct.Mapper;

@Mapper
public interface ContactInformationMapper {

    ContactInformationDto toContactInformationDto(ContactInformation contactInformation);

    ContactInformation toContactInformation(ContactInformationDto contactInformarionDto);
}
