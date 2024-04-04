package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.PlaceRepository;
import com.example.demo.vo.Festival;
import com.example.demo.vo.ThemePlace;

@Service
public class PlaceService {
	@Autowired
	private PlaceRepository PlaceRepository;

	public PlaceService(PlaceRepository placeRepository) {
		this.PlaceRepository = placeRepository;
	}

	public List<ThemePlace> getAllParkPlaces() {

		return PlaceRepository.getAllParkPlaces();
	}
	
	public List<ThemePlace> getAllParkPlacesChungBuk() {
		return PlaceRepository.getAllParkPlacesChungBuk();
	}
	
	public List<ThemePlace> getAllParkPlacesChungNam() {
		return PlaceRepository.getAllParkPlacesChungNam();
	}

	
	public List<ThemePlace> getAllRecreationalForests() {

		return PlaceRepository.getAllRecreationalForests();
	}
	
	public List<ThemePlace> getAllRecreationalForestsChungBuk() {
		return PlaceRepository.getAllRecreationalForestsChungBuk();
	}
	
	public List<ThemePlace> getAllRecreationalForestsChungNam() {
		return PlaceRepository.getAllRecreationalForestsChungNam();
	}
	
	public List<Festival> getDaeJeonFestivals() {
		return PlaceRepository.getDaeJeonFestivals();
	}

	public List<Festival> getChungBukFestivals() {
		return PlaceRepository.getChungBukFestivals();
	}

	public List<Festival> getChungNamFestivals() {
		return PlaceRepository.getChungNamFestivals();
	}

	public Festival getAllFestival(int id) {
		return PlaceRepository.getAllFestival(id);
	}

	public List<Festival> getAllFestival2(int id) {
		return PlaceRepository.getAllFestival2(id);
	}

	public List<ThemePlace> getAllMuseums() {
		return PlaceRepository.getAllMuseums();
	}

	public List<ThemePlace> getAllMuseumsChungBuk() {
		return PlaceRepository.getAllMuseumsChungBuk();
	}

	public List<ThemePlace> getAllMuseumsChungNam() {
		return PlaceRepository.getAllMuseumsChungNam();
	}

	public List<ThemePlace> getDaeJeonArtMuseums() {
		return PlaceRepository.getDaeJeonArtMuseums();
	}

	public List<ThemePlace> getChungBukArtMuseums() {
		return PlaceRepository.getChungBukArtMuseums();
	}

	public List<ThemePlace> getChungNamArtMuseums() {
		return PlaceRepository.getChungNamArtMuseums();
	}

	public List<ThemePlace> getDaeJeonHistoricalSites() {
		return PlaceRepository.getDaeJeonHistoricalSites();
	}
	
	public List<ThemePlace> getChungBukHistoricalSites() {
		return PlaceRepository.getChungBukHistoricalSites();
	}
	
	public List<ThemePlace> getChungNamHistoricalSites() {
		return PlaceRepository.getChungNamHistoricalSites();
	}
	
	public ThemePlace getThemePlaceById(int id) {
		return PlaceRepository.getThemePlaceById(id);
	}
}
