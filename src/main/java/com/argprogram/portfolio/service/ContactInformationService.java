
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.ContactInformationDto;


public interface ContactInformationService {
    
    void update(ContactInformationDto dto);
    
    ContactInformationDto getMeByToken();
}
