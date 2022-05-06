
package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Experience;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ExperienceRepository extends JpaRepository<Experience, Long>{
    
     @Query("SELECT e FROM Experience e WHERE e.portfolio.id = ?1")
    List<Experience> findAllByPortfolioId(Long id);
}
