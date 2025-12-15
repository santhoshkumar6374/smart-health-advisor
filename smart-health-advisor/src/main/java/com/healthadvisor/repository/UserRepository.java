package com.healthadvisor.repository;

import com.healthadvisor.model.User;  // <-- ADD THIS IMPORT
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String email);
}
