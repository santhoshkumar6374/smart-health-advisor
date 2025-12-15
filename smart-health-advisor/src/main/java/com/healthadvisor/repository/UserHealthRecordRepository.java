package com.healthadvisor.repository;

import com.healthadvisor.model.UserHealthRecord; // <-- THIS IS REQUIRED
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface UserHealthRecordRepository extends JpaRepository<UserHealthRecord, Long> {
    List<UserHealthRecord> findByUserId(Long userId);
}
