package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.parkPlace;

@Mapper
public interface ReactionalForestRepository {
	
	@Select("""
			SELECT *
			FROM parkPlace
			where region = '대전';
			""")
	public List<parkPlace> getAllParkPlaces();

}
