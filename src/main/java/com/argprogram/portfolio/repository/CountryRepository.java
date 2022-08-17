
package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountryRepository extends JpaRepository<Country,Long> {
    

    
}
