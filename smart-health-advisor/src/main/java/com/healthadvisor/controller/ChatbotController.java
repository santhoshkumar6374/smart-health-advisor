package com.healthadvisor.controller;

import com.healthadvisor.service.ChatbotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/chatbot")
public class ChatbotController {

    @Autowired
    private ChatbotService chatbotService;

    // ✅ THIS FIXES 404 ERROR
    @GetMapping
    public String chatbotPage() {
        return "chatbot"; // loads chatbot.html from templates
    }

    // API for chatbot message
    @PostMapping("/ask")
    @ResponseBody
    public Map<String, String> ask(@RequestBody Map<String, String> request) {
        return chatbotService.getResponse(request.get("message"));
    }
}
