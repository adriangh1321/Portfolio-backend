
package com.argprogram.portfolio.repository;


import com.argprogram.portfolio.model.Location;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LocationRepository extends JpaRepository<Location,Long> {
    
}
