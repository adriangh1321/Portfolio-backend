package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Skill;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Long> {

    @Query("SELECT s FROM Skill s WHERE s.portfolio.id = ?1")
    List<Skill> findAllByPortfolioId(Long id);
}
