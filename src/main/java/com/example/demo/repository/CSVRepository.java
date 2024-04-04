package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.Festival;
import com.example.demo.vo.ThemePlace;

@Mapper
public interface CSVRepository {
	@Insert({ "<script>",
		"INSERT INTO themePlace (`name`, region, roadLocation, latitude, longitude, phoneNumber, `body`, price, imgAdr, `type`) VALUES ",
		"<foreach collection='list' item='item' index='index' separator=','>",
		"(#{item.name}, #{item.region}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.phoneNumber}, #{item.body}, #{item.price}, #{item.imgAdr}, #{item.type})",
		"</foreach>", "</script>" })
	void insertCSVList1(List<ThemePlace> historicalSiteList);

	@Insert({ "<script>",
			"INSERT INTO festival (`name`, `period`, region, roadLocation, latitude, longitude, phoneNumber, `body`, price, homePage, imgAdr, imgAdrs) VALUES ",
			"<foreach collection='list' item='item' index='index' separator=','>",
			"(#{item.name}, #{item.period}, #{item.region}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.phoneNumber}, #{item.body}, #{item.price}, #{item.homePage}, #{item.imgAdr}, #{item.imgAdrs})",
			"</foreach>", "</script>" })
	void insertCSVList2(List<Festival> csvList);


}