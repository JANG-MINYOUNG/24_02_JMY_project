<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>

<div class="bg-video">
  <video class="bg-video__content" autoplay muted loop>
    <source src="https://cdn.pixabay.com/video/2020/02/23/32737-393990260_tiny.mp4" type="video/mp4" />
  </video>
</div>

<div class="trip-header">
    <h2>날씨별 액티비티</h2>
    <p>오늘 <span class="bold" style="font-weight: 800; color: #ff69b4;">날씨에 맞는</span> 완벽한 하루를 보내세요.</p>
    <div class="지역별">
        <a href="/usr/weatherTrip/chungNam">
            <div class="Chungnam"></div>
            <div class="Chungnam-container">충남</div>
        </a>
         <a href="/usr/weatherTrip/daeJeon">
            <div class="daejeon"></div>
            <div class="daejeon-container">대전</div>
        </a>
        <a href="/usr/weatherTrip/chungBuk">
            <div class="Chungbuk"></div>
            <div class="Chungbuk-container">충북</div>
        </a>  
</div>




