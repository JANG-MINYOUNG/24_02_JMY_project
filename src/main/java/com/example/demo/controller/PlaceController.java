package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.service.PlaceService;
import com.example.demo.vo.ArtMuseum;
import com.example.demo.vo.Festival;
import com.example.demo.vo.Museum;
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
		List<Museum> museums = PlaceService.getAllMuseums();
		List<ArtMuseum> artMuseums = PlaceService.getDaeJeonArtMuseums();
		List<Festival> festivals = PlaceService.getDaeJeonFestivals();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);

		return "usr/trip/daeJeon";
	}

	@RequestMapping("/usr/trip/chungBuk")
	public String showPlacesChungBuk(Model model) {

		List<parkPlace> parkPlaces = PlaceService.getAllParkPlacesChungBuk();
		List<recreationalForest> recreationalForests = PlaceService.getAllRecreationalForestsChungBuk();
		List<Museum> museums = PlaceService.getAllMuseumsChungBuk();
		List<ArtMuseum> artMuseums = PlaceService.getChungBukArtMuseums();
		List<Festival> festivals = PlaceService.getChungBukFestivals();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);

		return "usr/trip/chungBuk";
	}

	@RequestMapping("/usr/trip/chungNam")
	public String showPlacesChungNam(Model model) {

		List<parkPlace> parkPlaces = PlaceService.getAllParkPlacesChungNam();
		List<recreationalForest> recreationalForests = PlaceService.getAllRecreationalForestsChungNam();
		List<Museum> museums = PlaceService.getAllMuseumsChungNam();
		List<ArtMuseum> artMuseums = PlaceService.getChungNamArtMuseums();
		List<Festival> festivals = PlaceService.getChungNamFestivals();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);

		return "usr/trip/chungNam";
	}

	@RequestMapping("/usr/trip/detail")
	public String showDetail(Model model, int id) {

		Festival Allfestival = PlaceService.getAllFestival(id);
		List<Festival> Allfestival2 = PlaceService.getAllFestival2(id);

		model.addAttribute("Allfestival", Allfestival);
		model.addAttribute("Allfestival2", Allfestival2);

		return "usr/trip/detail";
	}
}