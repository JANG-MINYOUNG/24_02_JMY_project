package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.PlaceRepository;
import com.example.demo.vo.Festival;
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

	public List<recreationalForest> getAllRecreationalForests() {

		return PlaceRepository.getAllRecreationalForests();
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





}
