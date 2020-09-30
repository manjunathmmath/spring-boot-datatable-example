package com.skeleton.datatables.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.skeleton.datatables.domain.Student;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student,Integer> {
    Student findByRollNumber(String rollNumber);
    List<Student> findAllByRollNumber(String rollNumber);
}
