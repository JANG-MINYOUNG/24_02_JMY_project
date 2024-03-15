package com.example.demo.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class parkPlace {
    private int id; // Remove this if it's not necessary
    private String parkName;
    private String body;
    private String roadLocation;
    private double latitude; 
    private double longitude;
    private String parkArea;
    private String facility;
    private String price;
    private String phoneNumber;
    private String imgAdr;
}