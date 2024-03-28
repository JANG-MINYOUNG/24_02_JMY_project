package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.ArtMuseum;
import com.example.demo.vo.Festival;
import com.example.demo.vo.Museum;
import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;

@Mapper
public interface PlaceRepository {

	@Select("""
			SELECT *
			FROM parkPlace
			WHERE region = '대전';
			""")
	public List<parkPlace> getAllParkPlaces();
	
	@Select("""
			SELECT *
			FROM parkPlace
			WHERE region LIKE '충북%';
			""")
	public List<parkPlace> getAllParkPlacesChungBuk();
	
	@Select("""
			SELECT *
			FROM parkPlace
			WHERE region LIKE '충남%';
			""")
	public List<parkPlace> getAllParkPlacesChungNam();


	@Select("""
			SELECT *
			FROM recreationalForest
			where region = '대전';
			""")
	public List<recreationalForest> getAllRecreationalForests();
	
	@Select("""
			SELECT *
			FROM recreationalForest
			WHERE region LIKE '충청북도%';
			""")
	public List<recreationalForest> getAllRecreationalForestsChungBuk();
	
	@Select("""
			SELECT *
			FROM recreationalForest
			WHERE region LIKE '충청남도%';
			""")
	public List<recreationalForest> getAllRecreationalForestsChungNam();
	
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

	@Select("""
			SELECT *
			FROM festival F
			INNER JOIN festival_images I
			ON F.id = I.festival_id
			WHERE F.id = #{id}
			""")
	public List<Festival> getAllFestival2(int id);
	
	@Select("""
			SELECT *
			FROM museum
			WHERE region = '대전';
			""")
	public List<Museum> getAllMuseums();
	
	@Select("""
			SELECT *
			FROM museum
			WHERE region LIKE '충북%';
			""")
	public List<Museum> getAllMuseumsChungBuk();
	
	@Select("""
			SELECT *
			FROM museum
			WHERE region LIKE '충남%';
			""")
	public List<Museum> getAllMuseumsChungNam();
	
	@Select("""
			SELECT *
			FROM artMuseum
			WHERE region = '대전';
			""")
	public List<ArtMuseum> getDaeJeonArtMuseums();
	
	@Select("""
			SELECT *
			FROM artMuseum
			WHERE region LIKE '충북%';
			""")
	public List<ArtMuseum> getChungBukArtMuseums();
	
	@Select("""
			SELECT *
			FROM artMuseum
			WHERE region LIKE '충남%';
			""")
	public List<ArtMuseum> getChungNamArtMuseums();


	

	
}
