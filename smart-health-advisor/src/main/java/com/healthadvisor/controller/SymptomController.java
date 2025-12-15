package com.healthadvisor.controller;

import com.healthadvisor.model.Symptom;
import com.healthadvisor.service.SymptomService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/symptom")
public class SymptomController {
    private final SymptomService service;
    public SymptomController(SymptomService service){ this.service = service; }

    @GetMapping
    public String list(Model m){
        m.addAttribute("symptom", service.findAll());
        return "symptom";
    }

    @GetMapping("/add")
    public String addForm(Model m){
        m.addAttribute("symptom", new Symptom());
        return "symptom-form";
    }

    @PostMapping("/add")
    public String addSubmit(@ModelAttribute Symptom s){
        service.save(s);
        return "redirect:/symptoms";
    }
}
