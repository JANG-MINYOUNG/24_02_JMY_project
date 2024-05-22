<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>

<a class="weather-container" href="/">
	<div class="clock">
      <span id="Seoul"></span>
    </div>
	<div class="weather-icon"></div>
	<div class="temperature"></div>
	<div class="city"></div>
</a>

<script>
$(document).ready(function() {
    // 여러분의 OpenWeatherMap API 키
    var apiKey = '5d7a915f0fea8a335322d566d2ce04af';

    // 현재 날씨 데이터를 가져오기 위한 API 엔드포인트
    var apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

    // API 요청을 위한 매개변수
    var params = {
        q: 'Cheonan',           // 도시 이름 (영어)
        appid: apiKey,          // 여러분의 API 키
        units: 'metric'         // 온도 단위 (섭씨)
    };

    // 날씨 데이터를 가져오기 위한 AJAX 요청
    $.ajax({
        url: apiUrl,
        data: params,
        dataType: 'json',
        success: function(data) {
            // 날씨 아이콘 처리
            var weatherIcon = data.weather[0].icon;
            var iconUrl = 'http://openweathermap.org/img/wn/' + weatherIcon + '.png';
            $('.weather-icon').html('<img src="' + iconUrl + '">');

            // 온도 처리
            var temperature = Math.round(data.main.temp);
            $('.temperature').text('Temperature: ' + temperature + '°C');

            // 도시 이름 처리
            var cityName = data.name;
            $('.city').text('City: ' + cityName);
        },
        error: function(xhr, status, error) {
            // 오류 처리
            console.error('날씨 데이터 가져오기 오류:', error);
        }
    });
});
</script>

<script>
$(document).ready(function() {
    // 페이지 로드 시 공원과 휴양림 컨테이너를 숨깁니다.
    $("#parkPlacesContainer").show();
    $("#recreationalForestsContainer").hide();
    $("#museumContainer").hide();
    $("#artMuseumContainer").hide();
    $("#historicalSiteContainer").hide();

    // 공원 버튼 클릭 시 공원 컨테이너를 표시하고 휴양림 컨테이너를 숨깁니다.
    $("#parkButton").click(function() {
        $("#parkPlacesContainer").show();
        $("#recreationalForestsContainer").hide();
        $("#museumContainer").hide();
        $("#artMuseumContainer").hide();
        $("#historicalSiteContainer").hide();
    });

    // 휴양림 버튼 클릭 시 휴양림 컨테이너를 표시하고 공원 컨테이너를 숨깁니다.
    $("#recreationalButton").click(function() {
        $("#parkPlacesContainer").hide();
        $("#museumContainer").hide();
        $("#recreationalForestsContainer").show();
        $("#artMuseumContainer").hide();
        $("#historicalSiteContainer").hide();
    });
    
    // 박물관 버튼 클릭 시 박물관 컨테이너를 표시하고 다른 컨테이너를 숨깁니다.
    $("#museumButton").click(function() {
        $("#parkPlacesContainer").hide();
        $("#recreationalForestsContainer").hide();
        $("#museumContainer").show();
        $("#artMuseumContainer").hide();
        $("#historicalSiteContainer").hide();
    });
    
    // 미술관 버튼 클릭 시 미술관 컨테이너를 표시하고 다른 컨테이너를 숨깁니다.
    $("#artMuseumButton").click(function() {
        $("#parkPlacesContainer").hide();
        $("#recreationalForestsContainer").hide();
        $("#museumContainer").hide();
        $("#artMuseumContainer").show();
        $("#historicalSiteContainer").hide();
    });

    // 유적지 버튼 클릭 시 유적지 컨테이너를 표시하고 다른 컨테이너를 숨깁니다.
    $("#historicalSiteButton").click(function() {
        $("#parkPlacesContainer").hide();
        $("#recreationalForestsContainer").hide();
        $("#museumContainer").hide();
        $("#artMuseumContainer").hide();
        $("#historicalSiteContainer").show();
    });
});
</script>

<div class="trip_bg">
	<img src="https://cdn.dtnews24.com/news/photo/202311/758815_372653_5326.jpg" alt="" />
	<div class="bg_text_box">
		<h2 style="color: white;">충남지역 액티비티</h2>
		<p style="color: white;">봄, 축제 즐겨보자</p>
	</div>
</div>

 <div class="local_site">
  <div style="font-weight: bold; font-size: 20px;">충남<span style="font-size: 18px;"> 지역 문화관광 홈페이지 바로가기</span></div>	
  <a href="https://www.gongju.go.kr/tour/">공주시</a>
  <a href="https://www.geumsan.go.kr/tour/">금산군</a>
  <a href="https://www.nonsan.go.kr/tour/">논산시</a>
  <a href="https://www.dangjin.go.kr/tour.do">당진시</a>
  <a href="https://brcn.go.kr/tour.do">보령시</a>
  <a href="https://www.buyeo.go.kr/html/tour/">부여군</a>
  <a href="https://www.seosan.go.kr/tour/index.do">서산시</a>
  <a href="https://www.seocheon.go.kr/tour.do">서천군</a>
  <a href="https://www.asan.go.kr/tour/">아산시</a>
  <a href="https://www.yesan.go.kr/tour/index.do">예산군</a>
 </div>

<div class="지역별_nav">
	<a href="/usr/trip/chungNam">
		<div class="Chungnam"></div>
		<div class="Chungnam-container">충남</div>
	</a>
	<a href="/usr/trip/daeJeon">
            <div class="Daejeon"></div>
            <div class="Daejeon-container">대전</div>
    </a>
	<a href="/usr/trip/chungBuk">
		<div class="Chungbuk"></div>
		<div class="Chungbuk-container">충북</div>
	</a>
</div>

<section class="section slider-section">
  <div class="container slider-column">
    <div class="swiper swiper-slider">
      <div class="swiper-wrapper">
        <c:forEach items="${festivals}" var="festival" >
          <a href="detail?id=${festival.id}" class="swiper-slide">
            <img src="${festival.imgAdr}" alt="Swiper" class="swiper-slide">
          </a>
        </c:forEach>
      </div>
      <span class="swiper-pagination"></span>
      <span class="swiper-button-prev"></span>
      <span class="swiper-button-next"></span>
    </div>
  </div>
</section>

<div class="monthly_festival">
    <div class="month_controller">
        <h2>3월, 4월, 5월 <span style="font-size: 20px; font-weight: 500; color: #ff69b4;">축제 모아 보기</span></h2>
        <div class="festival_row">
            <!-- Iterate through the festivals and display each one -->
            <c:forEach items="${festivals}" var="festival">
                <a class="festival-box" href="detail?id=${festival.id}">
                    <img src="${festival.imgAdr}" alt="이미지">
                    <p>${festival.name}</p>
                </a>
            </c:forEach>
        </div>
        <!-- Additional months and festivals go here -->
    </div>
</div>

<div class="daejeon_hot">
	<h2>충남 <span style="color: red; font-size: 28px;">'핫'</span> 플레이스</h2>
	<p>충남 여행 떠나자~ <span style="color: red; font-size: 20px;">테마 별</span> 핫 플레이스 찾기</p>
	<div class="button-container">
    <!-- 공원 버튼 -->
    	<button id="parkButton">공원</button>
    <!-- 휴양림 버튼 -->
    	<button id="recreationalButton">휴양림</button>
    <!-- 박물관 버튼 -->
    	<button id="museumButton">박물관</button>
    <!-- 미술관 버튼 -->
    	<button id="artMuseumButton">미술관</button>
    <!-- 유적지 버튼 -->
    	<button id="historicalSiteButton">유적지</button>
	</div>
<!-- 공원 컨테이너 -->
	<div id="parkPlacesContainer" >
    <!-- 데이터베이스에서 가져온 공원 데이터를 표시할 컨테이너 -->
    	<div class="row">
        <!-- 공원 데이터 순회 -->
        	<c:forEach items="${parkPlaces}" var="parkPlace">
            	<a class="square-box" href="themeDetail?id=${parkPlace.id}">
                <!-- 이미지와 이름 표시 -->
                	<img src="${parkPlace.imgAdr}" alt="이미지">
                	<p>${parkPlace.name}</p>
            	</a>
        	</c:forEach>
    	</div>
	</div>
	<div id="recreationalForestsContainer">
    <!-- 데이터베이스에서 가져온 recreationalForests를 보여줄 컨테이너 -->
    	<div class="row">
        <!-- 데이터베이스에서 검색한 데이터를 순회합니다. -->
        <!-- 'recreationalForests'는 데이터베이스에서 가져온 'recreationalForest' 객체 목록을 가정합니다. -->
        	<c:forEach items="${recreationalForests}" var="recreationalForest">
            	<a class="square-box" href="themeDetail?id=${recreationalForest.id}">
                <!-- <img> 태그의 'src' 속성을 'recreationalForest' 객체의 'imgAdr' 필드 값으로 채웁니다. -->
                	<img src="${recreationalForest.imgAdr}" alt="이미지">
                <!-- <p> 태그의 내용을 'recreationalForest' 객체의 'name' 필드 값으로 채웁니다. -->
                	<p>${recreationalForest.name}</p>
            	</a>
        	</c:forEach>
    	</div>
	</div>
	<div id="museumContainer">
    <!-- 데이터베이스에서 가져온 museum 데이터를 표시할 컨테이너 -->
    	<div class="row">
        <!-- 박물관 데이터 순회 -->
        	<c:forEach items="${museums}" var="museum">
            	<a class="square-box" href="themeDetail?id=${museum.id}">
                <!-- 이미지와 이름 표시 -->
                	<img src="${museum.imgAdr}" alt="이미지">
                	<p>${museum.name}</p>
            	</a>
        	</c:forEach>
    	</div>
	</div>
	<div id="artMuseumContainer">
    <!-- 데이터베이스에서 가져온 artMuseum 데이터를 표시할 컨테이너 -->
    	<div class="row">
        <!-- 공원 데이터 순회 -->
        	<c:forEach items="${artMuseums}" var="artMuseum">
            	<a class="square-box" href="themeDetail?id=${artMuseum.id}">
                <!-- 이미지와 이름 표시 -->
                	<img src="${artMuseum.imgAdr}" alt="이미지">
                	<p>${artMuseum.name}</p>
            	</a>
        	</c:forEach>
    	</div>
	</div>
	<div id="historicalSiteContainer">
    <!-- 데이터베이스에서 가져온 museum 데이터를 표시할 컨테이너 -->
    	<div class="row">
        <!-- 공원 데이터 순회 -->
        	<c:forEach items="${historicalSites}" var="historicalSite">
            	<a class="square-box" href="themeDetail?id=${historicalSite.id}">
                <!-- 이미지와 이름 표시 -->
                	<img src="${historicalSite.imgAdr}" alt="이미지">
                	<p>${historicalSite.name}</p>
            	</a>
        	</c:forEach>
    	</div>
	</div>						
</div>