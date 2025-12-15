package com.healthadvisor.service;

import com.healthadvisor.model.UserHealthRecord;
import com.healthadvisor.repository.UserHealthRecordRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class HealthRecordService {

    private final UserHealthRecordRepository repo;

    public HealthRecordService(UserHealthRecordRepository repo) {
        this.repo = repo;
    }

    public UserHealthRecord save(UserHealthRecord record) {
        if (record.getRecordedAt() == null) {
            record.setRecordedAt(LocalDateTime.now());
        }
        return repo.save(record);
    }

    public List<UserHealthRecord> findByUserId(Long userId) {
        return repo.findByUserId(userId);
    }
}
