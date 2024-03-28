package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.PlaceRepository;
import com.example.demo.vo.ArtMuseum;
import com.example.demo.vo.Festival;
import com.example.demo.vo.Museum;
import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;

@Service
public class PlaceService {
	@Autowired
	private PlaceRepository PlaceRepository;

	public PlaceService(PlaceRepository placeRepository) {
		this.PlaceRepository = placeRepository;
	}

	public List<parkPlace> getAllParkPlaces() {

		return PlaceRepository.getAllParkPlaces();
	}
	
	public List<parkPlace> getAllParkPlacesChungBuk() {
		return PlaceRepository.getAllParkPlacesChungBuk();
	}
	
	public List<parkPlace> getAllParkPlacesChungNam() {
		return PlaceRepository.getAllParkPlacesChungNam();
	}

	
	public List<recreationalForest> getAllRecreationalForests() {

		return PlaceRepository.getAllRecreationalForests();
	}
	
	public List<recreationalForest> getAllRecreationalForestsChungBuk() {
		return PlaceRepository.getAllRecreationalForestsChungBuk();
	}
	
	public List<recreationalForest> getAllRecreationalForestsChungNam() {
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

	public List<Museum> getAllMuseums() {
		return PlaceRepository.getAllMuseums();
	}

	public List<Museum> getAllMuseumsChungBuk() {
		return PlaceRepository.getAllMuseumsChungBuk();
	}

	public List<Museum> getAllMuseumsChungNam() {
		return PlaceRepository.getAllMuseumsChungNam();
	}

	public List<ArtMuseum> getDaeJeonArtMuseums() {
		return PlaceRepository.getDaeJeonArtMuseums();
	}

	public List<ArtMuseum> getChungBukArtMuseums() {
		return PlaceRepository.getChungBukArtMuseums();
	}

	public List<ArtMuseum> getChungNamArtMuseums() {
		return PlaceRepository.getChungNamArtMuseums();
	}


	

}
