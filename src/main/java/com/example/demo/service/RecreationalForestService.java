package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.PlaceRepository;
import com.example.demo.vo.parkPlace;



@Service
public class RecreationalForestService {
	@Autowired
	private PlaceRepository parkPlaceRepository;
	
	public RecreationalForestService(PlaceRepository parkPlaceRepository) {
		this.parkPlaceRepository = parkPlaceRepository;
	}
	
	public List<parkPlace> getAllParkPlaces() {

		return parkPlaceRepository.getAllParkPlaces();
	}

}
