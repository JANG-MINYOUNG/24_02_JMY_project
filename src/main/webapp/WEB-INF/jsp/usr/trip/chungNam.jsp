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
        <img class="swiper-slide" src="https://lh3.googleusercontent.com/proxy/33aemUkGdu9kWB715t-fER5sddyG8Rl8VzU2itwMNYTfbxEwXRipqAnElCeJhJsr6uma4-9PjDo2f5lHtxwYZXOvNxHWufxsqOszZi6jJJQTmKdeEdE_wLY-CNheUDQ" alt="Swiper">
        <img class="swiper-slide" src="https://i.ytimg.com/vi/XQp2FKQlsoE/maxresdefault.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/df17f696-4b9f-4097-9c46-615ade39068a_3.png" alt="Swiper">
        <img class="swiper-slide" src="https://culture.asan.go.kr/upload_data/m_culture_set/lss_2.jpg" alt="Swiper">
        <img class="swiper-slide" src="https://i.ytimg.com/vi/VH8owYNWr9Y/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AH-CYAC0AWKAgwIABABGGwgMyh_MA8=&rs=AOn4CLARfLCwIC6GoFjx3DoHVu8ogRYU9w" alt="Swiper">
        <img class="swiper-slide" src="https://www.hdcity.co.kr/Upload/20240227/2024%20%ED%8F%AC%EC%8A%A4%ED%84%B0.png" alt="Swiper">
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
            	<img src="https://lh3.googleusercontent.com/proxy/33aemUkGdu9kWB715t-fER5sddyG8Rl8VzU2itwMNYTfbxEwXRipqAnElCeJhJsr6uma4-9PjDo2f5lHtxwYZXOvNxHWufxsqOszZi6jJJQTmKdeEdE_wLY-CNheUDQ" alt="이미지">
            	<p>2024 베리베리 빵빵데이 천안</p>
        	</div>
        	<div class="festival-box">
            	<img src="https://i.ytimg.com/vi/XQp2FKQlsoE/maxresdefault.jpg" alt="이미지">
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