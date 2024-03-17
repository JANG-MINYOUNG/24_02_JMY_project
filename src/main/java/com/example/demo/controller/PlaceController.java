package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.PlaceService;
import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;

@Controller
public class PlaceController {

	@Autowired
	PlaceService PlaceService;

	public PlaceController() {

	}

	@RequestMapping("/usr/trip/daeJeon")
	public String showPlaces(Model model) {

		List<parkPlace> parkPlaces = PlaceService.getAllParkPlaces();
		List<recreationalForest> recreationalForests = PlaceService.getAllRecreationalForests();
		
		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);

		return "usr/trip/daeJeon";
	}
}