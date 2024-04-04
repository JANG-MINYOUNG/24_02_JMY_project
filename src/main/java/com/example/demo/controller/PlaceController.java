package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.PlaceService;
import com.example.demo.vo.Festival;
import com.example.demo.vo.ThemePlace;

@Controller
public class PlaceController {

	@Autowired
	PlaceService PlaceService;

	public PlaceController() {

	}
	
	@RequestMapping("/usr/trip/main")
	public String showMain() {

		return "usr/trip/main";
	}
	
	@RequestMapping("/usr/weatherTrip/main")
	public String showWeatherTripMain() {

		return "usr/weatherTrip/main";
	}
	
	@RequestMapping("/usr/trip/daeJeon")
	public String showPlacesDaeJeon(Model model) {
	    // PlaceService를 사용하여 관련 데이터 가져오기
		List<Festival> festivals = PlaceService.getDaeJeonFestivals();
	    List<ThemePlace> parkPlaces = PlaceService.getAllParkPlaces();
	    List<ThemePlace> recreationalForests = PlaceService.getAllRecreationalForests();
	    List<ThemePlace> museums = PlaceService.getAllMuseums();
	    List<ThemePlace> artMuseums = PlaceService.getDaeJeonArtMuseums();
	    List<ThemePlace> historicalSites = PlaceService.getDaeJeonHistoricalSites();

	    // 모델에 데이터 추가
	    model.addAttribute("parkPlaces", parkPlaces);
	    model.addAttribute("recreationalForests", recreationalForests);
	    model.addAttribute("festivals", festivals);
	    model.addAttribute("museums", museums);
	    model.addAttribute("artMuseums", artMuseums);
	    model.addAttribute("historicalSites", historicalSites);

	    // 해당 view 반환
	    return "usr/trip/daeJeon";
	}

	@RequestMapping("/usr/weatherTrip/daeJeon")
	public String showWeatherPlacesDaeJeon(Model model) {
	    // PlaceService를 사용하여 관련 데이터 가져오기
	    List<ThemePlace> parkPlaces = PlaceService.getAllParkPlaces();
	    List<ThemePlace> recreationalForests = PlaceService.getAllRecreationalForests();
	    List<ThemePlace> museums = PlaceService.getAllMuseums();
	    List<ThemePlace> artMuseums = PlaceService.getDaeJeonArtMuseums();
	    List<Festival> festivals = PlaceService.getDaeJeonFestivals();
	    List<ThemePlace> historicalSites = PlaceService.getDaeJeonHistoricalSites();

	    // 모델에 데이터 추가
	    model.addAttribute("parkPlaces", parkPlaces);
	    model.addAttribute("recreationalForests", recreationalForests);
	    model.addAttribute("festivals", festivals);
	    model.addAttribute("museums", museums);
	    model.addAttribute("artMuseums", artMuseums);
	    model.addAttribute("historicalSites", historicalSites);

	    // 해당 view 반환
	    return "usr/weatherTrip/daeJeon";
	}
	
	@RequestMapping("/usr/trip/chungBuk")
	public String showPlacesChungBuk(Model model) {

		List<ThemePlace> parkPlaces = PlaceService.getAllParkPlacesChungBuk();
		List<ThemePlace> recreationalForests = PlaceService.getAllRecreationalForestsChungBuk();
		List<ThemePlace> museums = PlaceService.getAllMuseumsChungBuk();
		List<ThemePlace> artMuseums = PlaceService.getChungBukArtMuseums();
		List<Festival> festivals = PlaceService.getChungBukFestivals();
		List<ThemePlace> historicalSites = PlaceService.getChungBukHistoricalSites();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);
		model.addAttribute("historicalSites", historicalSites);

		return "usr/trip/chungBuk";
	}
	
	@RequestMapping("/usr/weatherTrip/chungBuk")
	public String showWeatherTripPlacesChungBuk(Model model) {

		List<ThemePlace> parkPlaces = PlaceService.getAllParkPlacesChungBuk();
		List<ThemePlace> recreationalForests = PlaceService.getAllRecreationalForestsChungBuk();
		List<ThemePlace> museums = PlaceService.getAllMuseumsChungBuk();
		List<ThemePlace> artMuseums = PlaceService.getChungBukArtMuseums();
		List<Festival> festivals = PlaceService.getChungBukFestivals();
		List<ThemePlace> historicalSites = PlaceService.getChungBukHistoricalSites();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);
		model.addAttribute("historicalSites", historicalSites);

		return "usr/weatherTrip/chungBuk";
	}

	@RequestMapping("/usr/trip/chungNam")
	public String showPlacesChungNam(Model model) {

		List<ThemePlace> parkPlaces = PlaceService.getAllParkPlacesChungNam();
		List<ThemePlace> recreationalForests = PlaceService.getAllRecreationalForestsChungNam();
		List<ThemePlace> museums = PlaceService.getAllMuseumsChungNam();
		List<ThemePlace> artMuseums = PlaceService.getChungNamArtMuseums();
		List<Festival> festivals = PlaceService.getChungNamFestivals();
		List<ThemePlace> historicalSites = PlaceService.getChungNamHistoricalSites();

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);
		model.addAttribute("historicalSites", historicalSites);

		return "usr/trip/chungNam";
	}
	
	@RequestMapping("/usr/weatherTrip/chungNam")
	public String showWeatherTripPlacesChungNam(Model model) {

		List<ThemePlace> parkPlaces = PlaceService.getAllParkPlacesChungNam();
		List<ThemePlace> recreationalForests = PlaceService.getAllRecreationalForestsChungNam();
		List<ThemePlace> museums = PlaceService.getAllMuseumsChungNam();
		List<ThemePlace> artMuseums = PlaceService.getChungNamArtMuseums();
		List<Festival> festivals = PlaceService.getChungNamFestivals();
		List<ThemePlace> historicalSites = PlaceService.getChungNamHistoricalSites();
		

		model.addAttribute("parkPlaces", parkPlaces);
		model.addAttribute("recreationalForests", recreationalForests);
		model.addAttribute("festivals", festivals);
		model.addAttribute("museums", museums);
		model.addAttribute("artMuseums", artMuseums);
		model.addAttribute("historicalSites", historicalSites);

		return "usr/weatherTrip/chungNam";
	}

	@RequestMapping("/usr/trip/detail")
	public String showDetail(Model model, int id) {

		Festival Allfestival = PlaceService.getAllFestival(id);
		List<Festival> Allfestival2 = PlaceService.getAllFestival2(id);

		model.addAttribute("Allfestival", Allfestival);
		model.addAttribute("Allfestival2", Allfestival2);

		return "usr/trip/detail";
	}
	
	@RequestMapping("/usr/trip/themeDetail")
	public String showThemeDetail(Model model, @RequestParam("id") int id) {
	    ThemePlace themePlace = PlaceService.getThemePlaceById(id);
	    model.addAttribute("themePlace", themePlace);
	    return "usr/trip/themeDetail";
	}

}