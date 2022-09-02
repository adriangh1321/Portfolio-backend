package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ContactInformationDto;
import com.argprogram.portfolio.mapper.ContactInformationMapper;
import com.argprogram.portfolio.model.ContactInformation;
import com.argprogram.portfolio.repository.ContactInformationRepository;
import com.argprogram.portfolio.service.ContactInformationService;
import com.argprogram.portfolio.service.PortfolioService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class ContactInformationServiceImpl implements ContactInformationService {

    private final ContactInformationRepository contactInformationRepository;
    private final ContactInformationMapper contactInformationMapper;
    private final PortfolioService portfolioService;

    @Transactional
    @Override
    public void update(ContactInformationDto dto) {
        ContactInformation contactInformation = this.portfolioService.getPortfolioByUserLogged().getContactInformation();
        contactInformation.setPhone(dto.getPhone());
        contactInformation.setEmail(dto.getEmail());
        contactInformation.setLinkedIn(dto.getLinkedIn());
        contactInformation.setRemoteRepository(dto.getRemoteRepository());
        contactInformation.setFacebook(dto.getFacebook());
        contactInformation.setTwitter(dto.getTwitter());
        contactInformation.setInstagram(dto.getInstagram());
        this.contactInformationRepository.save(contactInformation);
    }
    
    @Transactional(readOnly=true)
    @Override
    public ContactInformationDto getMeByToken() {
        ContactInformation contactInformation = this.portfolioService.getPortfolioByUserLogged().getContactInformation();
        return this.contactInformationMapper.toContactInformationDto(contactInformation);
    }

}
