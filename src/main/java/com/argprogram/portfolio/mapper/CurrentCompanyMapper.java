
package com.argprogram.portfolio.mapper;

import com.argprogram.portfolio.dto.CurrentCompanyDto;
import com.argprogram.portfolio.model.CurrentCompany;
import org.mapstruct.Mapper;

@Mapper
public interface CurrentCompanyMapper {
    
    CurrentCompanyDto toCurrentCompanyDto(CurrentCompany currentCompany);
    
    CurrentCompany toCurrentoCompany(CurrentCompanyDto currentCompanyDto);
}
