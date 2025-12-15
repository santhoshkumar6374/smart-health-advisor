package com.healthadvisor.controller;

import com.healthadvisor.model.Hospital;
import com.healthadvisor.service.NearestHospitalService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/hospital")
public class NearestHospitalRestController {

    private final NearestHospitalService nearestHospitalService;

    public NearestHospitalRestController(NearestHospitalService nearestHospitalService) {
        this.nearestHospitalService = nearestHospitalService;


    }

    @GetMapping("/nearest")
    public List<Hospital> getNearestHospitals(
            @RequestParam double lat,
            @RequestParam double lng,
            @RequestParam(defaultValue = "5") int limit) {
        return nearestHospitalService.findNearestHospitals(lat, lng, limit);
    }
}
