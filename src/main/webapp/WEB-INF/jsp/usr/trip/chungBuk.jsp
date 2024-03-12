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
        q: 'Cheongju',           // 도시 이름 (영어)
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
	<img src="https://cdn.ccdailynews.com/news/photo/202303/2193215_641420_2630.jpg" alt="" />
	<div class="bg_text_box">
		<h2 style="color: white;">충북지역 엑티비티</h2>
		<p style="color: white;">봄, 축제 즐겨보자</p>
	</div>	
</div>

 <div class="local_site">
  <div style="font-weight: bold; font-size: 20px;">충북<span style="font-size: 18px;"> 지역 문화관광 홈페이지 바로가기</span></div>	
  <a href="https://www.goesan.go.kr/tour/index.do">괴산군</a>
  <a href="https://www.danyang.go.kr/tour/527">단양군</a>
  <a href="http://www.tourboeun.go.kr/">보은군</a>
  <a href="https://yd21.go.kr/tour/">영동군</a>
  <a href="https://www.oc.go.kr/tour/index.do">옥천군</a>
  <a href="https://www.eumseong.go.kr/tour/index.do">음성군</a>
  <a href="https://tour.jecheon.go.kr/base/main/view">제천시</a>
  <a href="https://www.jincheon.go.kr/site/tour/main.do">진천군</a>
  <a href="https://www.cheongju.go.kr/ktour/index.do">청주시</a>
  <a href="https://www.chungju.go.kr/tour/index.do">충주시</a>
  <a href="https://www.jp.go.kr/tour.do">증평군</a>
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

