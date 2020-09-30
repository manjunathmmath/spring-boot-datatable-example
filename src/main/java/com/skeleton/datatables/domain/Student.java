package com.skeleton.datatables.domain;

import javax.persistence.*;

@Entity
@Table(name = "Student")

public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "student_seq")
    @SequenceGenerator(name = "student_seq", sequenceName = "student_seq")
    private Integer id;

    private String name;
    private String rollNumber;
    private double cgp;

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }

    public double getCgp() {
        return cgp;
    }

    public void setCgp(double cgp) {
        this.cgp = cgp;
    }
}
