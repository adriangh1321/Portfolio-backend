package com.argprogram.portfolio.repository.specifications;

import com.argprogram.portfolio.dto.PortfolioFiltersDto;
import com.argprogram.portfolio.model.Portfolio;
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
            Predicate predicateForFirtnameOrLastnameOrNickname;
            Predicate predicateForOccupation;
            Predicate predicateForCountry;
            Predicate predicateForState;
            
            
            if (StringUtils.hasLength(filterDto.getName())) {

                predicateForFirstname = criteriaBuilder.like(criteriaBuilder.lower(root.get("firstname")),
                        "%" + filterDto.getName().toLowerCase() + "%"
                );

                predicateForLastname = criteriaBuilder.like(criteriaBuilder.lower(root.get("lastname")),
                        "%" + filterDto.getName().toLowerCase() + "%"
                );
                
                Join<User,Portfolio> join= root.join("user",JoinType.INNER);
                
                predicateForNickname= criteriaBuilder.like(criteriaBuilder.lower(join.get("nickname")),
                        "%" + filterDto.getName().toLowerCase() + "%"
                );

               predicateForFirtnameOrLastnameOrNickname= criteriaBuilder.or(predicateForFirstname,predicateForLastname,predicateForNickname);
               predicates.add(predicateForFirtnameOrLastnameOrNickname);
            }
            
            if(StringUtils.hasLength(filterDto.getOccupation())){
                predicateForOccupation=criteriaBuilder.like(criteriaBuilder.lower(root.get("occupation")),
                        "%" + filterDto.getOccupation().toLowerCase() + "%"
                );
                predicates.add(predicateForOccupation);
            }
            
            if(StringUtils.hasLength(filterDto.getCountry())){
                predicateForCountry=criteriaBuilder.like(criteriaBuilder.lower(root.get("country")),
                        "%" + filterDto.getCountry().toLowerCase() + "%"
                );
                predicates.add(predicateForCountry);
            }
            
            if(StringUtils.hasLength(filterDto.getState())){
                predicateForState=criteriaBuilder.like(criteriaBuilder.lower(root.get("state")),
                        "%" + filterDto.getState().toLowerCase() + "%"
                );
                predicates.add(predicateForState);
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
