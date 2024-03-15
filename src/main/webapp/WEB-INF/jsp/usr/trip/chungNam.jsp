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
        <img class="swiper-slide" src="https://www.nonsan.go.kr/nsfestival/img/main/mvisual_bg_240304.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://cdn.imweb.me/thumbnail/20240304/bda56287c8c3a.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.thefestival.co.kr/upfile/img/2024/03/admin_1710026742.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.hongseong.go.kr/thumbnail/tursmCn/920_TUCN_202401101106322711.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.ffestival.co.kr/img_up/shop_pds/kp575/design/my_xml/star_ex1661145769.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://www.nie.re.kr/cmmn/file/imageSrc.do?atchFileId=2d0f707e90194f57870ddbfaa0e9457f&fileSn=2&thumb=Y" alt="Swiper">
        <img class="swiper-slide" src="https://www.hongseong.go.kr/thumbnail/tursmCn/920_TUCN_202401101106322711.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://lh3.googleusercontent.com/proxy/5wP97l14Cr3GgNLUmc5hdM4f_7MoDEVH1tbkAr5gqzIxQQbzJgwdhiT0BnKRVPAUOAtj9LO1QVlxLIfQBTSiVbi9yGff0eTRPknGjeuYVzwiP8Mhsg8u-BwNnXhLWq0" alt="Swiper">
        <img class="swiper-slide" src="https://tong.visitkorea.or.kr/cms/resource/48/2950948_image2_1.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/df17f696-4b9f-4097-9c46-615ade39068a_3.png" alt="Swiper">
        <img class="swiper-slide" src="https://culture.asan.go.kr/upload_data/m_culture_set/lss_2.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://i.ytimg.com/vi/VH8owYNWr9Y/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGwgMyh_MA8=&rs=AOn4CLARfLCwIC6GoFjx3DoHVu8ogRYU9w" alt="Swiper">" alt="Swiper">
        <img class="swiper-slide" src="data:image/jpeg;base64,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" alt="Swiper">
        <img class="swiper-slide" src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/9805568b-eff7-4336-90e3-c3413a87034a_3.JPG" alt="Swiper">
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
            	<img src="https://tong.visitkorea.or.kr/cms/resource/76/2806476_image2_1.jpeg" alt="이미지">
            	<p>논산 딸기 축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/93/3108893_image2_1.jpg" alt="이미지">
            	<p>천리포수목원 목련축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/45/2948745_image2_1.jpg" alt="이미지">
            	<p>서천 동백꽃 주꾸미 축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/66/3079066_image2_1.JPG" alt="이미지">
            	<p>홍성남당항 새조개축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/24/3073224_image2_1.jpg" alt="이미지">
            	<p>태안 빛축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.nie.re.kr/cmmn/file/imageSrc.do?atchFileId=2d0f707e90194f57870ddbfaa0e9457f&fileSn=2&thumb=Y" alt="이미지">
            	<p>사라져 가는 친구들</p>
        	</div>        	        	        	        	
        </div>
		<h2>4월 <span style="font-size: 20px; font-weight: 500; color: #ff69b4;">축제 모아 보기</span></h2>
		<div class="festival_row">
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/93/3108893_image2_1.jpg" alt="이미지">
            	<p>천리포수목원 목련축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://lh3.googleusercontent.com/proxy/5wP97l14Cr3GgNLUmc5hdM4f_7MoDEVH1tbkAr5gqzIxQQbzJgwdhiT0BnKRVPAUOAtj9LO1QVlxLIfQBTSiVbi9yGff0eTRPknGjeuYVzwiP8Mhsg8u-BwNnXhLWq0" alt="이미지">
            	<p>2024 베리베리 빵빵데이 천안</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/48/2950948_image2_1.jpg" alt="이미지">
            	<p>금산 보곡산골 산벚꽃 축제</p>
        	</div>        	        	
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/28/3108628_image2_1.jpg" alt="이미지">
            	<p>기지시줄다리기 축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/50/3105550_image2_1.jpg" alt="이미지">
            	<p>아산 성웅 이순신축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/13/3103213_image2_1.JPG" alt="이미지">
            	<p>부여 문화유산 야행</p>
        	</div> 
         	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/24/3073224_image2_1.jpg" alt="이미지">
            	<p>태안 빛축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.nie.re.kr/cmmn/file/imageSrc.do?atchFileId=2d0f707e90194f57870ddbfaa0e9457f&fileSn=2&thumb=Y" alt="이미지">
            	<p>사라져 가는 친구들</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/40/2948040_image2_1.jpg" alt="이미지">
            	<p>태안 세계튤립꽃박람회</p>
        	</div>           	        	        	        	
        </div>		
		<h2>5월 <span style="font-size: 20px; font-weight: 500; color: #ff69b4;">축제 모아 보기</span></h2>
		<div class="festival_row">
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/93/3107193_image2_1.jpg" alt="이미지">
            	<p>보령·AMC 국제 모터 페스티벌</p>
        	</div>
         	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/24/3073224_image2_1.jpg" alt="이미지">
            	<p>태안 빛축제</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://www.nie.re.kr/cmmn/file/imageSrc.do?atchFileId=2d0f707e90194f57870ddbfaa0e9457f&fileSn=2&thumb=Y" alt="이미지">
            	<p>사라져 가는 친구들</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://tong.visitkorea.or.kr/cms/resource/40/2948040_image2_1.jpg" alt="이미지">
            	<p>태안 세계튤립꽃박람회</p>
        	</div>       	
        </div>		
	</div>
</div>


<div class="daejeon_hot">
    <h2>충남 <span style="color: red; font-size: 28px;">'핫'</span> 플레이스</h2>
    <p>충남 여행 떠나자~ <span style="color: red; font-size: 20px;">테마 별</span> 핫 플레이스 찾기</p>
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