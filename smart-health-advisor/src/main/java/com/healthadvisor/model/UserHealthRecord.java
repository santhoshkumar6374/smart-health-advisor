package com.healthadvisor.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "user_health_records")
public class UserHealthRecord {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private User user;

    private String symptoms;
    private String diagnosis;

    private LocalDateTime recordedAt;
    @Lob
    @Column(columnDefinition = "LONGTEXT")
    private String description;// For record timestamp

    // ✅ No-args constructor
    public UserHealthRecord() {}

    // ✅ All-args constructor
    public UserHealthRecord(Long id, User user, String symptoms, String diagnosis, LocalDateTime recordedAt) {
        this.id = id;
        this.user = user;
        this.symptoms = symptoms;
        this.diagnosis = diagnosis;
        this.recordedAt = recordedAt;
        this.description= description;
    }

    // ✅ Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }

    public String getSymptoms() { return symptoms; }
    public void setSymptoms(String symptoms) { this.symptoms = symptoms; }

    public String getDiagnosis() { return diagnosis; }
    public void setDiagnosis(String diagnosis) { this.diagnosis = diagnosis; }

    public LocalDateTime getRecordedAt() { return recordedAt; }
    public void setRecordedAt(LocalDateTime recordedAt) { this.recordedAt = recordedAt; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }
}

