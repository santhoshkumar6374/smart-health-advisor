package com.healthadvisor.controller;

import com.healthadvisor.service.PharmacyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PharmacyController {

    private final PharmacyService pharmacyService;

    public PharmacyController(PharmacyService pharmacyService) {
        this.pharmacyService = pharmacyService;
    }

    @GetMapping("/pharmacies")
    public String list(
            @RequestParam(required = false) Double lat,
            @RequestParam(required = false) Double lon,
            Model model) {

        if (lat != null && lon != null) {
            model.addAttribute("pharmacies",
                    pharmacyService.findNearest(lat, lon));
        } else {
            model.addAttribute("pharmacies",
                    pharmacyService.findAll());
        }

        return "pharmacies";
    }
}
