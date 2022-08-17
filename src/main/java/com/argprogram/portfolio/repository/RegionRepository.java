package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.Region;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RegionRepository extends JpaRepository<Region, Long> {

    @Query(value = "SELECT r FROM Region r WHERE r.country.id=:id ORDER BY r.name ASC")
    List<Region> findAllByCountryId(@Param("id") Long countryId);

}
