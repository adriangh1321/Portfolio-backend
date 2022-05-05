package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ContactInformationDto;
import com.argprogram.portfolio.mapper.ContactInformationMapper;
import com.argprogram.portfolio.repository.ContactInformationRepository;
import com.argprogram.portfolio.service.ContactInformationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ContactInformationServiceImpl implements ContactInformationService {

    private final ContactInformationRepository contactInformationRepository;
    private final ContactInformationMapper contactInformationMapper;

    @Override
    public ContactInformationDto getById(Long id) {
        ContactInformationDto dto = this.contactInformationRepository.findById(id)
                .map(entity -> this.contactInformationMapper.toContactInformationDto(entity))
                .orElseThrow();
        return dto;
    }

}
