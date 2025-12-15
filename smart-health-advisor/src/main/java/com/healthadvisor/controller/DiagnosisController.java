package com.healthadvisor.controller;

import com.healthadvisor.model.Disease;
import com.healthadvisor.model.User;
import com.healthadvisor.model.UserHealthRecord;
import com.healthadvisor.model.Symptom;
import com.healthadvisor.repository.DiseaseRepository;
import com.healthadvisor.repository.SymptomRepository;
import com.healthadvisor.repository.UserRepository;
import com.healthadvisor.repository.UserHealthRecordRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/diagnosis")
public class DiagnosisController {

    @Autowired
    private SymptomRepository symptomRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserHealthRecordRepository userHealthRecordRepository;

    @Autowired
    private DiseaseRepository diseaseRepository;

    // Show diagnosis form
    @GetMapping
    public String showForm(Model model) {
        List<Symptom> symptoms = symptomRepository.findAll();
        model.addAttribute("symptoms", symptoms);
        return "diagnosis";
    }

    // Process diagnosis request
    @PostMapping("/result")
    public String processDiagnosis(
            @RequestParam(value = "selectedSymptoms", required = false) List<Long> selectedSymptomIds,
            @RequestParam(value = "customSymptom", required = false) String customSymptom,
            HttpSession session,
            Model model) {

        // Validate session
        Long userId = (Long) session.getAttribute("userId");
        if (userId == null) return "redirect:/login";

        User user = userRepository.findById(userId).orElse(null);
        if (user == null) return "redirect:/login";

        // Collect selected symptoms
        List<String> symptomNames = new ArrayList<>();
        if (selectedSymptomIds != null) {
            symptomNames.addAll(
                    symptomRepository.findAllById(selectedSymptomIds).stream()
                            .map(Symptom::getName)
                            .collect(Collectors.toList())
            );
        }

        // Add custom symptom if provided
        if (customSymptom != null && !customSymptom.trim().isEmpty()) {
            symptomNames.add(customSymptom.trim());
        }

        // If no symptoms provided
        if (symptomNames.isEmpty()) {
            model.addAttribute("error", "Please select or type at least one symptom!");
            model.addAttribute("symptoms", symptomRepository.findAll());
            return "diagnosis";
        }

        // Fetch all diseases from DB
        List<Disease> diseases = diseaseRepository.findAll();

        // Simple matching logic
        String diagnosis = "No matching condition found.";
        String diseaseDescription = "";

        outerLoop:
        for (Disease disease : diseases) {
            for (String symptom : symptomNames) {
                if (disease.getSymptoms() != null &&
                        disease.getSymptoms().toLowerCase().contains(symptom.toLowerCase())) {
                    diagnosis = disease.getName();
                    diseaseDescription = disease.getDescription();
                    break outerLoop; // stop at first match
                }
            }
        }

        // Save user health record
        UserHealthRecord record = new UserHealthRecord();
        record.setUser(user);
        record.setSymptoms(String.join(", ", symptomNames));
        record.setDiagnosis(diagnosis);
        record.setDescription(diseaseDescription); // optional
        userHealthRecordRepository.save(record);

        // Pass data to view
        model.addAttribute("diagnosis", diagnosis);
        model.addAttribute("description", diseaseDescription);
        model.addAttribute("symptoms", String.join(", ", symptomNames));

        return "diagnosis-result";
    }
}
