package com.healthadvisor;

import com.healthadvisor.model.*;
import com.healthadvisor.repository.*;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {

    private final SymptomRepository symptomRepo;
    private final DiseaseRepository diseaseRepo;
    private final HospitalRepository hospitalRepo;
    private final PharmacyRepository pharmacyRepo;
    private final UserRepository userRepo;

    public DataInitializer(SymptomRepository symptomRepo,
                           DiseaseRepository diseaseRepo,
                           HospitalRepository hospitalRepo,
                           PharmacyRepository pharmacyRepo,
                           UserRepository userRepo) {
        this.symptomRepo = symptomRepo;
        this.diseaseRepo = diseaseRepo;
        this.hospitalRepo = hospitalRepo;
        this.pharmacyRepo = pharmacyRepo;
        this.userRepo = userRepo;
    }

    @Override
    public void run(String... args) throws Exception {

        // ------------------------
        // ADD DEFAULT ADMIN USER FIRST
        // ------------------------
        if (userRepo.count() == 0) {
            User admin = new User();
            admin.setName("Admin");
            admin.setEmail("admin@example.com");
            admin.setPassword("admin"); // You can hash this later
            userRepo.save(admin);
        }

        // ------------------------
        // ADD DEFAULT SYMPTOMS
        // ------------------------
        if (symptomRepo.count() == 0) {
            Symptom s1 = new Symptom(); s1.setName("Fever"); symptomRepo.save(s1);
            Symptom s2 = new Symptom(); s2.setName("Cough"); symptomRepo.save(s2);
            Symptom s3 = new Symptom(); s3.setName("Headache"); symptomRepo.save(s3);
            Symptom s4 = new Symptom(); s4.setName("Sore throat"); symptomRepo.save(s4);
        }

        // ------------------------
        // ADD DEFAULT DISEASES
        // ------------------------
        if (diseaseRepo.count() == 0) {
            Disease d1 = new Disease();
            d1.setName("Common Cold");
            d1.setSymptoms("cough,sore throat,headache");
            d1.setDescription("A viral infection causing cough and sore throat.");
            diseaseRepo.save(d1);

            Disease d2 = new Disease();
            d2.setName("Flu");
            d2.setSymptoms("fever,cough,headache");
            d2.setDescription("Influenza - high fever and body ache.");
            diseaseRepo.save(d2);
        }

        // ------------------------
        // ADD DEFAULT HOSPITALS
        // ------------------------
        if (hospitalRepo.count() == 0) {
            Hospital h1 = new Hospital();
            h1.setName("City Hospital");
            h1.setAddress("123 Main St");
            h1.setPhone("9999999999");
            h1.setLatitude(11.110493);
            h1.setLongitude(77.325387);
            hospitalRepo.save(h1);

            Hospital h2 = new Hospital();
            h2.setName("General Clinic");
            h2.setAddress("274/2, Nachammal Colony 2nd street Andipalayam, Tiruppur, Tamil Nadu 641687");
            h2.setPhone("8888888888");
            h2.setLatitude(11.110493);
            h2.setLongitude(77.325387);
            hospitalRepo.save(h2);
        }

        // ------------------------
        // ADD DEFAULT PHARMACIES
        // ------------------------
        if (pharmacyRepo.count() == 0) {
            Pharmacy p1 = new Pharmacy();
            p1.setName("Care Pharmacy");
            p1.setAddress("10 Market Rd");
            p1.setPhone("7777777777");
            pharmacyRepo.save(p1);
        }
    }
}
