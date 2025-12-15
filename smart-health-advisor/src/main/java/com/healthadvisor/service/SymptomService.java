package com.healthadvisor.service;

import com.healthadvisor.model.Symptom;
import com.healthadvisor.repository.SymptomRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SymptomService {
    private final SymptomRepository repo;
    public SymptomService(SymptomRepository repo){ this.repo = repo; }

    public List<Symptom> findAll(){ return repo.findAll(); }
    public Symptom save(Symptom s){ return repo.save(s); }
}
