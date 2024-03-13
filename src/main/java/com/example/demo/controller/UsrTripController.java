package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrTripController {

	@RequestMapping("/usr/trip/main")
	public String showMain() {

		return "/usr/trip/main";
	}
	
	@RequestMapping("/usr/trip/daeJeon")
	public String showDeajeon() {

		return "/usr/trip/daeJeon";
	}
	
	@RequestMapping("/usr/trip/chungBuk")
	public String showChungBuk() {

		return "/usr/trip/chungBuk";
	}
	
	@RequestMapping("/usr/trip/chungNam")
	public String showChungNam() {

		return "/usr/trip/chungNam";
	}
	
	@RequestMapping("/usr/trip/detail")
	public String showDetail() {

		return "/usr/trip/detail";
	}
}