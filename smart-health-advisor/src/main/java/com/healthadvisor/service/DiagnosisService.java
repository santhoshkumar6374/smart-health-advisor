package com.healthadvisor.service;

import com.healthadvisor.model.Disease;
import com.healthadvisor.repository.DiseaseRepository;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class DiagnosisService {

    private final DiseaseRepository diseaseRepository;

    public DiagnosisService(DiseaseRepository diseaseRepository) {
        this.diseaseRepository = diseaseRepository;
    }

    /**
     * Diagnose based on user-selected symptoms
     * - Trims and lowercases inputs
     * - Partial matching
     * - Returns empty list if no matches
     */
    public List<Disease> diagnose(List<String> selectedSymptoms) {
        if (selectedSymptoms == null || selectedSymptoms.isEmpty())
            return Collections.emptyList();

        List<String> cleanSelected = selectedSymptoms.stream()
                .map(String::trim)
                .map(String::toLowerCase)
                .collect(Collectors.toList());

        List<Disease> allDiseases = diseaseRepository.findAll();
        Map<Disease, Integer> scores = new HashMap<>();

        for (Disease disease : allDiseases) {
            if (disease.getSymptoms() == null) continue;

            Set<String> dbSymptoms = Arrays.stream(disease.getSymptoms().split(","))
                    .map(String::trim)
                    .map(String::toLowerCase)
                    .collect(Collectors.toSet());

            int matchCount = 0;
            for (String userSym : cleanSelected) {
                boolean matched = dbSymptoms.stream().anyMatch(sym -> sym.contains(userSym));
                if (matched) matchCount++;
            }

            if (matchCount > 0) scores.put(disease, matchCount);
        }

        return scores.entrySet().stream()
                .sorted(Map.Entry.<Disease, Integer>comparingByValue().reversed())
                .map(Map.Entry::getKey)
                .collect(Collectors.toList());
    }
}
