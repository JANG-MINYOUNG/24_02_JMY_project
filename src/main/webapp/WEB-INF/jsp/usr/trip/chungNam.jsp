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

<div class="trip_bg">
	<img src="https://cdn.dtnews24.com/news/photo/202311/758815_372653_5326.jpg" alt="" />
	<div class="bg_text_box">
		<h2 style="color: white;">충남지역 엑티비티</h2>
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
        <img class="swiper-slide" src="https://www.cbiz.kr/news/photo/201810/14888_18089_5555.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.cbiz.kr/news/photo/201810/14888_18089_5555.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.cbiz.kr/news/photo/201810/14888_18089_5555.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.cbiz.kr/news/photo/201810/14888_18089_5555.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.cbiz.kr/news/photo/201810/14888_18089_5555.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.cbiz.kr/news/photo/201810/14888_18089_5555.jpg" alt="Swiper">
      </div>
      <span class="swiper-pagination"></span>
      <span class="swiper-button-prev"></span>
      <span class="swiper-button-next"></span>
    </div>
  </div>
</section>

<div class="monthly_festival">
	<div class="month_controller">
		<h2>3월 <span style="font-size: 20px; font-weight: 500; color: #ff69b4;">축제 모아 보기</span></h2>
		<div class="festival_row">
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>        	
        </div>
		<h2>4월 <span style="font-size: 20px; font-weight: 500; color: #ff69b4;">축제 모아 보기</span></h2>
		<div class="festival_row">
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>        	        	
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>        	
        </div>		
		<h2>5월 <span style="font-size: 20px; font-weight: 500; color: #ff69b4;">축제 모아 보기</span></h2>
		<div class="festival_row">
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            	<p>여기에 텍스트를 입력하세요</p>
        	</div>        	
        </div>		
	</div>
</div>


<div class="daejeon_hot">
    <h2>충남 <span style="color: red; font-size: 28px;">'핫'</span> 플레이스</h2>
    <p>충남 여행 떠나자~ <span style="color: red; font-size: 20px;">테마 별</span> 핫 플레이스 찾기</p>
    <div class="row">
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
         <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
         <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
         <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
         <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
         <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
         <div class="square-box">
            <img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
            <p>여기에 텍스트를 입력하세요</p>
        </div>
        
        
        <!-- 나머지 상자를 추가합니다. 필요한 만큼 복사하여 붙여넣으세요. -->
    </div>
    <!-- 필요한 만큼 행을 추가합니다. -->
</div>