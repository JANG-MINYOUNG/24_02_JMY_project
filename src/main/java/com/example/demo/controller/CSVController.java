package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.service.CSVService;


@Controller
public class CSVController {

    @Autowired
    private CSVService csvService;

    @GetMapping("/readAndSaveToDB")
    @ResponseBody
    public String readAndSaveToDB() {
        return csvService.readAndSaveToDB();
    }
    
    @GetMapping("/readAndSaveToDB1")
    @ResponseBody
    public String readAndSaveToDB1() {
        return csvService.readAndSaveToDB1();
    }
    
    @GetMapping("/readAndSaveToDB2")
    @ResponseBody
    public String readAndSaveToDB2() {
        return csvService.readAndSaveToDB2();
    }
    
    @GetMapping("/readAndSaveToDB3")
    @ResponseBody
    public String readAndSaveToDB3() {
        return csvService.readAndSaveToDB3();
    }
    
    @GetMapping("/readAndSaveToDB4")
    @ResponseBody
    public String readAndSaveToDB4() {
        return csvService.readAndSaveToDB4();
    }
}