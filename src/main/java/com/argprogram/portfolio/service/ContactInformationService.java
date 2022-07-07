
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.ContactInformationDto;


public interface ContactInformationService {
    
    ContactInformationDto getById(Long id);
    
    void update(Long id, ContactInformationDto dto);
    
    ContactInformationDto getMeByToken();
}
