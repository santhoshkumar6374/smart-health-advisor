package com.healthadvisor.service;

import com.healthadvisor.model.Hospital;
import com.healthadvisor.repository.HospitalRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HospitalService {

    private final HospitalRepository repo;

    public HospitalService(HospitalRepository repo) {
        this.repo = repo;
    }

    public List<Hospital> findAll() {
        return repo.findAll();
    }
}
