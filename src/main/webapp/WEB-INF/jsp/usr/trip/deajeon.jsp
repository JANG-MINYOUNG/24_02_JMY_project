<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>


<div class="weather-container">
	<div class="weather-icon"></div>
	<div class="temperature"></div>
	<div class="city"></div>
</div>

<script>
$(document).ready(function() {
    // 여러분의 OpenWeatherMap API 키
    var apiKey = '5d7a915f0fea8a335322d566d2ce04af';

    // 현재 날씨 데이터를 가져오기 위한 API 엔드포인트
    var apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

    // API 요청을 위한 매개변수
    var params = {
        q: 'Daejeon',           // 도시 이름 (영어)
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


<div class="trip_bg">
	<img src="https://img.freepik.com/free-photo/cityscape-incheon-bridge-korea_335224-415.jpg?t=st=1710130673~exp=1710134273~hmac=b0a0743fd21cf43f7d3220dd15fa0331819777d72c880071b9c529544bfc2909&w=1380" alt="" />
	<div class="bg_text_box">
		<h2 style="color: white;">대전지역 엑티비티</h2>
		<p style="color: white;">봄, 축제 즐겨보자</p>
	</div>
</div>

 <div class="local_site">
  <div style="font-weight: bold; font-size: 20px;">대전<span style="font-size: 18px;"> 지역 문화관광 홈페이지 바로가기</span></div>	
  <a href="https://www.daedeok.go.kr/tour/index.do">대덕구</a>
  <a href="https://www.donggu.go.kr/dg/tour">동구</a>
  <a href="https://www.seogu.go.kr/tour/index.do">서구</a>
  <a href="https://www.yuseong.go.kr/tour/">유성구</a>
  <a href="https://www.djjunggu.go.kr/tour/index.do">중구</a>
</div>


<div class="지역별_nav">
	<a href="/usr/trip/chungNam">
		<div class="Chungnam"></div>
		<div class="Chungnam-container">충남</div>
	</a>
	<a href="/usr/trip/chungBuk">
		<div class="Chungbuk"></div>
		<div class="Chungbuk-container">충북</div>
	</a>
	<a href="/usr/trip/deaJeon">
            <div class="Daejeon"></div>
            <div class="Daejeon-container">대전</div>
    </a>
</div>

<div class="nav-box">
	<div class="text-box2">
		<h2>봄, 시즌 <span class="bold" style="font-weight: 800;">여행지</span></h2>
		<a href="/usr/trip/main">추천 여행지 바로가기</a>
	</div>
	
	<div class="img-box2">
	<img src="https://i.ibb.co/nPZh7qf/20.png" alt="" /></div>
	<div class="nav-box2-container">	
		<div class="nav-box2">
			<a href="">추천! 테마여행</a>
			<a href="">추천 여행지로 바로가기</a>
		</div>
		<div class="img-box3">
			<a href="#"><img src="https://i.ibb.co/2M657Lz/image.jpg" alt="image" border="0"></a>
		</div>
	</div>		
	<div class="nav-box3-container">	
		<div class="nav-box3">
			<a href="">날씨별! 엑티비티</a>
			<a href="">날씨별 여행지 바로가기</a>
		</div>
		<div class="img-box4">
			<a href="#"><img src="https://lh3.googleusercontent.com/p/AF1QipNWcAVvjkMq1iLowvG5YwVy6Vh0DxZpcoWqk1Po=s680-w680-h510" alt="image" border="0"></a>
		</div>
	</div>
	<div class="nav-box4-container">	
		<div class="nav-box4">
			<a href="">동행자 찾기!</a>
			<a href="">함께 떠날 동료 찾기</a>
		</div>
	</div>
	<div class="nav-box5-container">	
		<div class="nav-box5">
			<a href="">나만의 여행 일지 남기기</a>
			<a href="">여행일지 바로가기</a>
		</div>
	</div>
	<div class="nav-box-bg"></div>
</div>
