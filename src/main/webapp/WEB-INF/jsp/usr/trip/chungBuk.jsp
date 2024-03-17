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
        q: 'Chungju',           // 도시 이름 (영어)
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
        <img class="swiper-slide" src="https://www.oc.go.kr/DATA/contents/main/20240228011439999_PLds.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://file2.nocutnews.co.kr/newsroom/image/2024/02/23/202402231414502960_2.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://file2.nocutnews.co.kr/newsroom/image/2024/02/23/202402231414502960_2.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://tong.visitkorea.or.kr/cms/resource/51/3106451_image2_1.jpg" alt="Swiper">
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
    <h2>충북 <span style="color: red; font-size: 28px;">'핫'</span> 플레이스</h2>
    <p>노색도시 충북! <span style="color: red; font-size: 20px;">테마 별</span> 핫 플레이스 찾기</p>
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