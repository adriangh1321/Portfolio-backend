package com.argprogram.portfolio.repository;

import com.argprogram.portfolio.model.User;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

//    Optional<User> findUserByEmail(String email);
//
//    User getUserByEmail(String email);

    Optional<User> findByEmail(String email);
    
    Optional<User> findByNickname(String nickname);
}
