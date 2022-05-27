
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.CurrentCompanyDto;


public interface CurrentCompanyService {
    CurrentCompanyDto getById(Long id);
          
    void update(Long id, CurrentCompanyDto dto);
}
