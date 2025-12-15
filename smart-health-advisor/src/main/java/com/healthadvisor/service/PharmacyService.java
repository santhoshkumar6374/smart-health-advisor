package com.healthadvisor.service;

import com.healthadvisor.model.Pharmacy;
import com.healthadvisor.repository.PharmacyRepository;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;

@Service
public class PharmacyService {

    private final PharmacyRepository repo;

    public PharmacyService(PharmacyRepository repo) {
        this.repo = repo;
    }

    public List<Pharmacy> findAll() {
        return repo.findAll();
    }

    public List<Pharmacy> findNearest(double userLat, double userLon) {
        return repo.findAll()
                .stream()
                .sorted(Comparator.comparingDouble(
                        p -> distance(userLat, userLon,
                                p.getLatitude(), p.getLongitude())))
                .toList();
    }

    // Haversine Formula
    private double distance(double lat1, double lon1,
                            double lat2, double lon2) {

        final int R = 6371; // KM

        double dLat = Math.toRadians(lat2 - lat1);
        double dLon = Math.toRadians(lon2 - lon1);

        double a = Math.sin(dLat / 2) * Math.sin(dLat / 2)
                + Math.cos(Math.toRadians(lat1))
                * Math.cos(Math.toRadians(lat2))
                * Math.sin(dLon / 2) * Math.sin(dLon / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        return R * c;
    }
}
