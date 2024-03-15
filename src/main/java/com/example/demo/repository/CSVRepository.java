package com.example.demo.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.demo.vo.Reply;
import com.example.demo.vo.parkPlace;

@Mapper
public interface CSVRepository {

    @Insert({
            "<script>",
            "INSERT INTO parkPlace (parkName, `body`, roadLocation, latitude, longitude, parkArea, facility, price, phoneNumber, imgAdr) VALUES ",
            "<foreach collection='csvList' item='item' index='index' separator=','>",
            "(#{item.parkName}, #{item.body}, #{item.roadLocation}, #{item.latitude}, #{item.longitude}, #{item.parkArea}, #{item.facility}, #{item.price}, #{item.phoneNumber}, #{item.imgAdr})",
            "</foreach>",
            "</script>"
    })
    void insertCSVList(List<parkPlace> csvList);

}
