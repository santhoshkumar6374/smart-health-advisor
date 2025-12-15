package com.healthadvisor.repository;

import com.healthadvisor.model.Symptom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SymptomRepository extends JpaRepository<Symptom, Long> { }
