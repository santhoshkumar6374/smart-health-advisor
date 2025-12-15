package com.healthadvisor.repository;

import com.healthadvisor.model.Disease;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DiseaseRepository extends JpaRepository<Disease, Long> {

    List<Disease> findBySymptomsContainingIgnoreCase(String symptom);
}
