package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;

@Mapper
public interface PlaceRepository {
	
	@Select("""
			SELECT *
			FROM parkPlace
			where region = '대전';
			""")
	public List<parkPlace> getAllParkPlaces();
	
	@Select("""
			SELECT *
			FROM recreationalForest
			where region = '대전';
			""")
	public List<recreationalForest> getAllRecreationalForests();

}
