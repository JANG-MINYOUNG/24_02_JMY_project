package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.PlaceService;
import com.example.demo.vo.Festival;
import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;

@Controller
public class PlaceController {

	@Autowired
	PlaceService PlaceService;

	public PlaceController() {

	}

	@RequestMapping("/usr/trip/daeJeon")
	public String showPlacesDaeJeon(Model model) {

		List<parkPlace> parkPlaces = PlaceService.getAllParkPlaces();
		List<recreationalForest> recreationalForests = PlaceService.getAllRecreationalForests();
		List<Festival> festivals = PlaceService.getDaeJeonFestivals();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		

		return "usr/trip/daeJeon";
	}
	
	@RequestMapping("/usr/trip/chungBuk")
	public String showPlacesChungBuk(Model model) {

		List<parkPlace> parkPlaces = PlaceService.getAllParkPlaces();
		List<recreationalForest> recreationalForests = PlaceService.getAllRecreationalForests();
		List<Festival> festivals = PlaceService.getChungBukFestivals();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		

		return "usr/trip/chungBuk";
	}
	
	@RequestMapping("/usr/trip/chungNam")
	public String showPlacesChungNam(Model model) {

		List<parkPlace> parkPlaces = PlaceService.getAllParkPlaces();
		List<recreationalForest> recreationalForests = PlaceService.getAllRecreationalForests();
		List<Festival> festivals = PlaceService.getChungNamFestivals();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		

		return "usr/trip/chungNam";
	}

	@RequestMapping("/usr/trip/detail")
	public String showDetail(Model model, int id) {
		
		Festival Allfestival = PlaceService.getAllFestival(id);
		
		model.addAttribute("Allfestival", Allfestival);

		return "usr/trip/detail";
	}
}