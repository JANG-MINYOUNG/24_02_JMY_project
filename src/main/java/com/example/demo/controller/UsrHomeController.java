package com.example.demo.controller;

import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrHomeController {

	 @RequestMapping("/usr/home/springMainPage")
	    public String showSpringMainPage() {
	        return "usr/home/springMainPage";
	    }

	    @RequestMapping("/usr/home/summerMainPage")
	    public String showSummerMainPage() {
	        return "usr/home/summerMainPage";
	    }

	    @RequestMapping("/usr/home/fallMainPage")
	    public String showFallMainPage() {
	        return "usr/home/fallMainPage";
	    }

	    @RequestMapping("/usr/home/winterMainPage")
	    public String showWinterMainPage() {
	        return "usr/home/winterMainPage";
	    }

	    @RequestMapping("/")
	    public String showRoot(Model model) {
	        LocalDate now = LocalDate.now();
	        int month = now.getMonthValue();
	        String season;

	        if (month >= 3 && month <= 5) {
	            season = "spring";
	        } else if (month >= 6 && month <= 8) {
	            season = "summer";
	        } else if (month >= 9 && month <= 11) {
	            season = "fall";
	        } else {
	            season = "winter";
	        }

	        model.addAttribute("season", season);
	        return "redirect:/usr/home/" + season + "MainPage";
	    }
	}
	