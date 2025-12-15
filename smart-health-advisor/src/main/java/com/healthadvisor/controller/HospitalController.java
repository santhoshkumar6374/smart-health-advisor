package com.healthadvisor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HospitalController {

    @GetMapping("/map")
    public String mapPage() {
        return "map"; // Thymeleaf template: map.html
    }
}
