package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Education;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface EducationRepository extends JpaRepository<Education, Long> {

    @Query("SELECT e FROM Education e WHERE e.portfolio.id = ?1")
    List<Education> findAllByPortfolioId(Long id);

    @Query("SELECT e FROM Education e WHERE e.id = ?1 AND e.portfolio.id = ?2")
    Optional<Education> findByEducationIdAndPortfolioId(Long educationId, Long portfolioId);
}
