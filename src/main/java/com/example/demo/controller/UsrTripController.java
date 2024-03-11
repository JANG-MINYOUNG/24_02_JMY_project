package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrTripController {

	@RequestMapping("/usr/trip/main")
	public String showMain() {

		return "/usr/trip/main";
	}
	
	@RequestMapping("/usr/trip/deajeon")
	public String showDeajeon() {

		return "/usr/trip/deajeon";
	}
}