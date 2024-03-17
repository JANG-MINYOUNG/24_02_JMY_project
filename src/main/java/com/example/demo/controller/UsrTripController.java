package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrTripController {

	@RequestMapping("/usr/trip/main")
	public String showMain() {

		return "usr/trip/main";
	}
	
//	@RequestMapping("/usr/trip/daeJeon")
//	public String showDeajeon() {
//
//		return "usr/trip/daeJeon";
//	}
	
	@RequestMapping("/usr/trip/chungBuk")
	public String showChungBuk() {

		return "usr/trip/chungBuk";
	}
	
	@RequestMapping("/usr/trip/chungNam")
	public String showChungNam() {

		return "usr/trip/chungNam";
	}
	
	@RequestMapping("/usr/trip/detail")
	public String showDetail() {

		return "usr/trip/detail";
	}
	
	@RequestMapping("/usr/weatherTrip/main")
	public String showWeatherTripMain() {

		return "usr/weatherTrip/main";
	}
	
	@RequestMapping("/usr/weatherTrip/daeJeon")
	public String showWeatherTripDeajeon() {

		return "usr/weatherTrip/daeJeon";
	}
	
	@RequestMapping("/usr/weatherTrip/chungBuk")
	public String showWeatherTripChungBuk() {

		return "usr/weatherTrip/chungBuk";
	}
	
	@RequestMapping("/usr/weatherTrip/chungNam")
	public String showWeatherTripChungNam() {

		return "usr/weatherTrip/chungNam";
	}
	
	@RequestMapping("/usr/weatherTrip/main2")
	public String showWeatherTripMain2() {

		return "usr/weatherTrip/main2";
	}
}