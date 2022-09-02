
package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Project;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long>{
    
    @Query("SELECT p FROM Project p WHERE p.portfolio.id = ?1")
    List<Project> findAllByPortfolioId(Long id);
    
    @Query("SELECT p FROM Project p WHERE p.id = ?1 AND p.portfolio.id = ?2")
    Optional<Project> findByProjectIdAndPortfolioId(Long projectId, Long portfolioId);
}
