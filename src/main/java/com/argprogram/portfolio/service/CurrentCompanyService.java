
package com.argprogram.portfolio.service;

import com.argprogram.portfolio.dto.CurrentCompanyDto;


public interface CurrentCompanyService {
    CurrentCompanyDto getMeByToken();
          
    void update(CurrentCompanyDto dto);
}
