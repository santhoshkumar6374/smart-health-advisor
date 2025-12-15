package com.healthadvisor.service;

import com.healthadvisor.model.Disease;
import com.healthadvisor.repository.DiseaseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ChatbotService {

    @Autowired
    private DiseaseRepository diseaseRepository;

    public Map<String, String> getResponse(String message) {

        Map<String, String> response = new HashMap<>();

        message = message.toLowerCase();

        // Split message into words
        String[] words = message.split(" ");

        for (String word : words) {

            List<Disease> diseases = diseaseRepository
                    .findBySymptomsContainingIgnoreCase(word);

            if (!diseases.isEmpty()) {
                Disease d = diseases.get(0);

                response.put("reply",
                        "🩺 Possible Issue: " + d.getName() + "\n\n" +
                                "📖 Solution & Advice:\n" + d.getDescription());

                return response;
            }
        }

        response.put("reply",
                "❓ Sorry, I couldn't identify the issue.\n" +
                        "👨‍⚕️ Please consult a General Physician.");

        return response;
    }
}
