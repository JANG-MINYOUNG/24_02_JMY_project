package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.Festival;
import com.example.demo.vo.Museum;
import com.example.demo.vo.Reply;
import com.example.demo.vo.parkPlace;
import com.example.demo.vo.recreationalForest;

@Mapper
public interface CSVRepository {

    @Insert({
            "<script>",
            "INSERT INTO parkPlace (parkName, region, `body`, roadLocation, latitude, longitude, parkArea, facility, price, phoneNumber, imgAdr) VALUES ",
            "<foreach collection='csvList' item='item' index='index' separator=','>",
            "(#{item.parkName}, #{item.region}, #{item.body}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.parkArea}, #{item.facility}, #{item.price}, #{item.phoneNumber}, #{item.imgAdr})",
            "</foreach>",
            "</script>"
    })
    void insertCSVList(List<parkPlace> csvList);
 

    @Insert({
        "<script>",
        "INSERT INTO recreationalForest (`name`, region, roadLocation, latitude, longitude,  phoneNumber, `body`, price, imgAdr) VALUES ",
        "<foreach collection='csvList' item='item' index='index' separator=','>",
        "(#{item.name}, #{item.region}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.phoneNumber}, #{item.body}, #{item.price}, #{item.imgAdr})",
        "</foreach>",
        "</script>"
    })
	void insertCSVList1(List<recreationalForest> csvList);
    
    @Insert({
        "<script>",
        "INSERT INTO festival (`name`, `period`, region, roadLocation, latitude, longitude, phoneNumber, `body`, price, homePage, imgAdr, imgAdrs) VALUES ",
        "<foreach collection='list' item='item' index='index' separator=','>",
        "(#{item.name}, #{item.period}, #{item.region}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.phoneNumber}, #{item.body}, #{item.price}, #{item.homePage}, #{item.imgAdr}, #{item.imgAdrs})",
        "</foreach>",
        "</script>"
    })
    void insertCSVList2(List<Festival> csvList);

    @Insert({
        "<script>",
        "INSERT INTO museum (`name`, region, roadLocation, latitude, longitude,  phoneNumber, `body`, price, imgAdr) VALUES ",
        "<foreach collection='csvList' item='item' index='index' separator=','>",
        "(#{item.name}, #{item.region}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.phoneNumber}, #{item.body}, #{item.price}, #{item.imgAdr})",
        "</foreach>",
        "</script>"
    })
	void insertCSVList3(List<Museum> csvList);

}