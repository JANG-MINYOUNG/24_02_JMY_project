package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.Festival;
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

	@Select("""
			SELECT *
			FROM festival
			WHERE region = '대전';
			""")
	public List<Festival> getDaeJeonFestivals();
	
	@Select("""
			SELECT *
			FROM festival
			WHERE region LIKE '충북%';
			""")
	public List<Festival> getChungBukFestivals();
	
	@Select("""
			SELECT *
			FROM festival
			WHERE region LIKE '충남%';
			""")
	public List<Festival> getChungNamFestivals();

	

	
	
	@Select("""
			SELECT *
			FROM festival
			WHERE id = #{id}
			""")
	public Festival getAllFestival(int id);


	

}