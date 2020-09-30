package com.skeleton.datatables.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import  com.skeleton.datatables.repository.StudentRepository;
import com.skeleton.datatables.domain.*;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentRepository studentRepository;

    public List<Student> findAll(){
        return  studentRepository.findAll();
    }

}
