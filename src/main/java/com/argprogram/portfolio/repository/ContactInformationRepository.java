
package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.ContactInformation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactInformationRepository extends JpaRepository<ContactInformation, Long>{
    
}
