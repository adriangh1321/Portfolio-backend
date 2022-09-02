package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Interest;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface InterestRepository extends JpaRepository<Interest, Long> {

    @Query("SELECT i FROM Interest i WHERE i.portfolio.id = ?1")
    List<Interest> findAllByPortfolioId(Long id);

    @Query("SELECT i FROM Interest i WHERE i.id = ?1 AND i.portfolio.id = ?2")
    Optional<Interest> findByInterestIdAndPortfolioId(Long interestId, Long portfolioId);

}
