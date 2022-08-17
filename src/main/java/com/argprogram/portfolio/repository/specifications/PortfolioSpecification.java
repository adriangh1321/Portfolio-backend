package com.argprogram.portfolio.repository.specifications;

import com.argprogram.portfolio.dto.PortfolioFiltersDto;
import com.argprogram.portfolio.model.Country;
import com.argprogram.portfolio.model.Location;
import com.argprogram.portfolio.model.Portfolio;
import com.argprogram.portfolio.model.Region;
import com.argprogram.portfolio.model.User;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.JoinType;
import javax.persistence.criteria.Predicate;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

@Component
public class PortfolioSpecification {

    public Specification<Portfolio> getByFilters(PortfolioFiltersDto filterDto) {

        return (root, query, criteriaBuilder) -> {
            List<Predicate> predicates = new ArrayList();
            Predicate predicateForFirstname;
            Predicate predicateForLastname;
            Predicate predicateForNickname;
            Predicate predicateForFirtnameOrLastnameOrNicknameOrOccupation;
            Predicate predicateForOccupation;
            Predicate predicateForCountry;
            Predicate predicateForRegion;

            if (StringUtils.hasLength(filterDto.getFind())) {

                predicateForFirstname = criteriaBuilder.like(criteriaBuilder.lower(root.get("firstname")),
                        "%" + filterDto.getFind().toLowerCase() + "%"
                );

                predicateForLastname = criteriaBuilder.like(criteriaBuilder.lower(root.get("lastname")),
                        "%" + filterDto.getFind().toLowerCase() + "%"
                );

                Join<User, Portfolio> join = root.join("user", JoinType.INNER);

                predicateForNickname = criteriaBuilder.like(criteriaBuilder.lower(join.get("nickname")),
                        "%" + filterDto.getFind().toLowerCase() + "%"
                );
                 predicateForOccupation = criteriaBuilder.like(criteriaBuilder.lower(root.get("occupation")),
                        "%" + filterDto.getFind().toLowerCase() + "%"
                );

                predicateForFirtnameOrLastnameOrNicknameOrOccupation = criteriaBuilder.or(predicateForFirstname, predicateForLastname, predicateForNickname,predicateForOccupation);
                predicates.add(predicateForFirtnameOrLastnameOrNicknameOrOccupation);
    
            }



            if(StringUtils.hasLength(filterDto.getCountry())){
                Join<Location, Portfolio> joinLocationPortfolio = root.join("location", JoinType.INNER);
                Join<Region, Location> joinRegionLocationPortfolio = joinLocationPortfolio.join("region", JoinType.INNER);
                Join<Country, Region> joinCountryRegionLocationPortfolio = joinRegionLocationPortfolio.join("country", JoinType.INNER);

                predicateForCountry = criteriaBuilder.equal(
                        joinCountryRegionLocationPortfolio.get("id"),
                        filterDto.getCountry());
                predicates.add(predicateForCountry);


            }
            if (StringUtils.hasLength(filterDto.getRegion())) {

                Join<Location, Portfolio> joinLocationPortfolio = root.join("location", JoinType.INNER);
                Join<Region, Location> joinRegionLocationPortfolio = joinLocationPortfolio.join("region", JoinType.INNER);

                predicateForRegion = criteriaBuilder.equal(
                        joinRegionLocationPortfolio.get("id"),
                        filterDto.getRegion());
                predicates.add(predicateForRegion);
                //                predicateForState=criteriaBuilder.like(criteriaBuilder.lower(root.get("state")),
                //                        "%" + filterDto.getRegion().toLowerCase() + "%"
                //                );
                //                predicates.add(predicateForState);
            }

//            if (filterDto.getAge()!=null && StringUtils.hasLength(filterDto.getAge().toString())) {
//                predicates.add(
//                        criteriaBuilder.equal(
//                                root.get("age"),
//                                filterDto.getAge())
//                );
//            }
//            if (!CollectionUtils.isEmpty(filterDto.getIdMovies())) {
//                Join<MovieEntity,CharacterEntity> join= root.join("movies",JoinType.INNER);
//                Expression<String> moviesId=join.get("id");
//                predicates.add(moviesId.in(filterDto.getIdMovies()));
//            }
            //remove duplicates
            query.distinct(true);

            //order resolver
            String orderByField = "firstname";
            query.orderBy(filterDto.isASC()
                    ? criteriaBuilder.asc(root.get(orderByField))
                    : criteriaBuilder.desc(root.get(orderByField))
            );
            return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
        };
    }

}
