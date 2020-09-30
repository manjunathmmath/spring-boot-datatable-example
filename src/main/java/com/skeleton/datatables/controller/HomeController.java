package com.skeleton.datatables.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.skeleton.datatables.domain.*;
import com.skeleton.datatables.service.*;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    StudentService studentService;

    @RequestMapping(value = {"/",})
    public String index(Model model) {
        return "home/index";
    }

    @RequestMapping(value = {"/fetchAllStudents",})
    @ResponseBody
    public List<Map<String, String>> fetchAllStudents(Model model, @RequestParam Map<String, String> reqParam) {

        List<Map<String, String>> dataList = new ArrayList<>();
        List<Student> students = studentService.findAll();
        for (Student stud : students) {
            Map<String, String> record = new HashMap<>();
            record.put("name", stud.getName());
            record.put("rollNumber", stud.getRollNumber());
            record.put("cgp", String.valueOf(stud.getCgp()));
            record.put("id", String.valueOf(stud.getId()));
            dataList.add(record);
        }
        return dataList;
    }


}
