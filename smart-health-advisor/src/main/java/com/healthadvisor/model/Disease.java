package com.healthadvisor.model;

import jakarta.persistence.*;

@Entity
@Table(name = "diseases")
public class Disease {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;


    @Lob
    @Column(columnDefinition = "LONGTEXT")
    private String description;



    private String symptoms; // comma separated symptom names

    // ✅ No-args constructor
    public Disease() {}

    // ✅ All-args constructor
    public Disease(Long id, String name, String description, String symptoms) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.symptoms = symptoms;
    }

    // ✅ Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getSymptoms() { return symptoms; }
    public void setSymptoms(String symptoms) { this.symptoms = symptoms; }
}
