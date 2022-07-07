package com.argprogram.portfolio.service.impl;

import com.argprogram.portfolio.dto.ContactInformationDto;
import com.argprogram.portfolio.mapper.ContactInformationMapper;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.User;
import com.argprogram.portfolio.repository.ContactInformationRepository;
import com.argprogram.portfolio.service.AuthService;
import com.argprogram.portfolio.service.ContactInformationService;
import com.argprogram.portfolio.service.PortfolioService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ContactInformationServiceImpl implements ContactInformationService {

    private final ContactInformationRepository contactInformationRepository;
    private final ContactInformationMapper contactInformationMapper;
    private final PortfolioService portfolioService;
    private final AuthService authService;

    @Override
    public ContactInformationDto getById(Long id) {
        ContactInformationDto dto = this.contactInformationRepository.findById(id)
                .map(entity -> this.contactInformationMapper.toContactInformationDto(entity))
                .orElseThrow();
        return dto;
    }

    @Override
    public void update(Long id, ContactInformationDto dto) {
        this.contactInformationRepository.findById(id)
                .map(contactInformation -> {
                    contactInformation.setPhone(dto.getPhone());
                    contactInformation.setEmail(dto.getEmail());
                    contactInformation.setLinkedIn(dto.getLinkedIn());
                    contactInformation.setRemoteRepository(dto.getRemoteRepository());
                    contactInformation.setFacebook(dto.getFacebook());
                    contactInformation.setTwitter(dto.getTwitter());
                    contactInformation.setInstagram(dto.getInstagram());
                    return this.contactInformationRepository.save(contactInformation);
                })
                .orElseThrow();
    }

    @Override
    public ContactInformationDto getMeByToken() {
        User user = this.authService.getUserLogged();
        Portfolio portfolio = this.portfolioService.getPortfolioByUserId(user.getId());
        return this.contactInformationMapper.toContactInformationDto(portfolio.getContactInformation());
    }

}
