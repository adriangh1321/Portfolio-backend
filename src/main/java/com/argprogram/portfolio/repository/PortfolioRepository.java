package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Portfolio;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PortfolioRepository extends JpaRepository<Portfolio, Long> {

    @Query(value = "SELECT p FROM Portfolio p WHERE p.user.id = ?1")
    Optional<Portfolio> findByUserId(Long idUser);
}
