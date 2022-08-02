package com.argprogram.portfolio.repository.specifications;

import com.argprogram.portfolio.dto.PortfolioFiltersDto;
import com.argprogram.portfolio.model.Portfolio;
import java.util.ArrayList;
import java.util.List;
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
            Predicate predicateForFirtnameOrLastname;
            
            if (StringUtils.hasLength(filterDto.getName())) {

                predicateForFirstname = criteriaBuilder.like(criteriaBuilder.lower(root.get("firstname")),
                        "%" + filterDto.getName().toLowerCase() + "%"
                );

                predicateForLastname = criteriaBuilder.like(criteriaBuilder.lower(root.get("lastname")),
                        "%" + filterDto.getName().toLowerCase() + "%"
                );
                

               predicateForFirtnameOrLastname= criteriaBuilder.or(predicateForFirstname,predicateForLastname);
               predicates.add(predicateForFirtnameOrLastname);
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
