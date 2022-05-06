
package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Project;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long>{
    
    @Query("SELECT p FROM Project p WHERE p.portfolio.id = ?1")
    List<Project> findAllByPortfolioId(Long id);
    
}
