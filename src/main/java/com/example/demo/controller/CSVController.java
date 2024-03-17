package com.example.demo.controller;

import com.example.demo.service.CSVService;
import com.example.demo.vo.Article;
import com.example.demo.vo.Board;
import com.example.demo.vo.Reply;
import com.example.demo.vo.ResultData;
import com.example.demo.vo.Rq;
import com.example.demo.vo.parkPlace;

import jakarta.servlet.http.HttpServletRequest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CSVController {

    @Autowired
    private CSVService csvService;

    @GetMapping("/readAndSaveToDB")
    @ResponseBody
    public String readAndSaveToDB() {
        return csvService.readAndSaveToDB();
    }
    
    @GetMapping("/readAndSaveToDB2")
    @ResponseBody
    public String readAndSaveToDB2() {
        return csvService.readAndSaveToDB2();
    }
    
}