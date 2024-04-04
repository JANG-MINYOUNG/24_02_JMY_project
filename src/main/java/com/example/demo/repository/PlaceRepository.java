package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.Festival;
import com.example.demo.vo.ThemePlace;

@Mapper
public interface PlaceRepository {

	@Select("""
			SELECT *
			FROM themePlace
			WHERE region = '대전'
			AND `type` = '공원';
			""")
	public List<ThemePlace> getAllParkPlaces();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충북%'
			AND `type` = '공원';
			""")
	public List<ThemePlace> getAllParkPlacesChungBuk();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충남%'
			AND `type` = '공원';
			""")
	public List<ThemePlace> getAllParkPlacesChungNam();


	@Select("""
			SELECT *
			FROM themePlace
			where region = '대전'
			AND `type` = '휴양림';
			""")
	public List<ThemePlace> getAllRecreationalForests();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충청북도%'
			AND `type` = '휴양림';
			""")
	public List<ThemePlace> getAllRecreationalForestsChungBuk();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충청남도%'
			AND `type` = '휴양림';
			""")
	public List<ThemePlace> getAllRecreationalForestsChungNam();
	
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
			FROM themePlace
			WHERE region = '대전'
			AND `type` = '박물관';
			""")
	public List<ThemePlace> getAllMuseums();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충북%'
			AND `type` = '박물관';
			""")
	public List<ThemePlace> getAllMuseumsChungBuk();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충남%'
			AND `type` = '박물관';
			""")
	public List<ThemePlace> getAllMuseumsChungNam();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region = '대전'
			AND `type` = '미술관';
			""")
	public List<ThemePlace> getDaeJeonArtMuseums();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충북%'
			AND `type` = '미술관';
			""")
	public List<ThemePlace> getChungBukArtMuseums();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충남%'
			AND `type` = '미술관';
			""")
	public List<ThemePlace> getChungNamArtMuseums();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '대전%'
			AND `type` = '유적지';
			""")
	public List<ThemePlace> getDaeJeonHistoricalSites();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충북%'
			AND `type` = '유적지';
			""")
	public List<ThemePlace> getChungBukHistoricalSites();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE region LIKE '충남%'
			AND `type` = '유적지';
			""")
	public List<ThemePlace> getChungNamHistoricalSites();
	
	@Select("""
			SELECT *
			FROM themePlace
			WHERE id = #{id}
			""")
	public ThemePlace getThemePlaceById(int id);
	

	
	
}
