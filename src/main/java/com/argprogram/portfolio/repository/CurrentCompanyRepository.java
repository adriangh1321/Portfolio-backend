package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.CurrentCompany;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CurrentCompanyRepository extends JpaRepository<CurrentCompany, Long> {

}
