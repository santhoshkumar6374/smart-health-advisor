package com.healthadvisor.service;

import com.healthadvisor.model.Hospital;
import com.healthadvisor.repository.HospitalRepository;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class NearestHospitalService {

    private final HospitalRepository hospitalRepository;

    public NearestHospitalService(HospitalRepository hospitalRepository) {
        this.hospitalRepository = hospitalRepository;
    }

    private double distance(double lat1, double lon1, double lat2, double lon2) {
        final int R = 6371; // Earth radius in km
        double latDistance = Math.toRadians(lat2 - lat1);
        double lonDistance = Math.toRadians(lon2 - lon1);

        double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
                + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        return R * c;
    }

    public List<Hospital> findNearestHospitals(double userLat, double userLng, int limit) {
        return hospitalRepository.findAll().stream()
                .filter(h -> h.getLatitude() != null && h.getLongitude() != null)
                .sorted(Comparator.comparingDouble(h -> distance(userLat, userLng, h.getLatitude(), h.getLongitude())))
                .limit(limit)
                .collect(Collectors.toList());
    }
}
