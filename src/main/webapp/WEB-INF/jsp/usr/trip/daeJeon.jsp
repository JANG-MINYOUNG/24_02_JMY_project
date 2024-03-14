<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>


<a class="weather-container" href="/usr/weatherTrip/daeJeon">
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
        <img class="swiper-slide" src="https://i.ytimg.com/vi/SHsqWfYirXA/maxresdefault.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://static.wixstatic.com/media/2a5481_9e678513bae34c1e8311958302f0bc9f~mv2.jpg/v1/fit/w_2500,h_1330,al_c/2a5481_9e678513bae34c1e8311958302f0bc9f~mv2.jpg" alt="Swiper">
        <img class="swiper-slide" src=https://flexible.img.hani.co.kr/flexible/normal/755/426/imgdb/original/2023/0807/20230807501170.jpg alt="Swiper">
        <img class="swiper-slide" src="https://djzerofe.com/theme/basic/img/festival_30.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://i.ytimg.com/vi/SHsqWfYirXA/maxresdefault.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://i.ytimg.com/vi/SHsqWfYirXA/maxresdefault.jpg" at="Swiper">
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
    <h2>대전 <span style="color: red; font-size: 28px;">'핫'</span> 플레이스</h2>
    <p>대전 노잼? 노! 꿀잼! 대전 <span style="color: red; font-size: 20px;">테마 별</span> 핫 플레이스 찾기</p>
    <div class="button-container">
        <button>공원</button>
        <button>· 휴양림</button>
        <button>· 박물관</button>
        <button>· 미술관</button>
        <button>· 유적지</button>
    </div>
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

