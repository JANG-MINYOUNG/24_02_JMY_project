<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>

<script>
	$(document).ready(
			function() {
				// 여러분의 OpenWeatherMap API 키
				var apiKey = '5d7a915f0fea8a335322d566d2ce04af';

				// 현재 날씨 데이터를 가져오기 위한 API 엔드포인트
				var apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

				// API 요청을 위한 매개변수
				var params = {
					q : 'Chungju', // 도시 이름 (영어)
					appid : apiKey, // 여러분의 API 키
					units : 'metric' // 온도 단위 (섭씨)
				};

				// 날씨 데이터를 가져오기 위한 AJAX 요청
				$.ajax({
					url : apiUrl,
					data : params,
					dataType : 'json',
					success : function(data) {
						// 날씨 아이콘 처리
						var weatherIcon = data.weather[0].icon;
						var iconUrl = 'http://openweathermap.org/img/wn/'
								+ weatherIcon + '.png';
						$('.weather-icon').html('<img src="' + iconUrl + '">');

						// 온도 처리
						var temperature = Math.round(data.main.temp);
						$('.temperature').text(temperature + '°C');

						// 도시 이름 처리
						var cityName = data.name;
						$('.city').text(cityName);
					},
					error : function(xhr, status, error) {
						// 오류 처리
						console.error('날씨 데이터 가져오기 오류:', error);
					}
				});

				$.getJSON(apiUrl, params, function(data) {
					// 날씨 데이터를 파싱합니다.
					var temperature = data.main.temp;
					var weatherDescription = data.weather[0].description;

					// 조건문을 적용하여 추천을 생성합니다.
					var recommendation1, recommendation2;
					if (weatherDescription.includes('clear')) {
						recommendation1 = '금일 날씨가 화창합니다.';
						recommendation2 = '집에만 있지말고 밖에 나가서 놀아볼까요?';
					} else if (weatherDescription.includes('clouds')) {
						recommendation1 = '금일 구름이 많은 날씨입니다.';
						recommendation2 = '이런 활동 어떠세요?';
					} else if (weatherDescription.includes('rain')) {
						recommendation1 = '금일 비가 오고 있습니다.';
						recommendation2 = '야외활동 말고, 이런 실내 활동 어떠세요?';
					} else {
						recommendation1 = '추천: 도시를 탐험하세요!';
					}

					// 추천을 표시합니다.
					$('#recommendation1').text(recommendation1);
					$('#recommendation2').text(recommendation2);
				});
			});
</script>

<div class="weather_recommend_place">
	<h2 style="font-size: 30px; font-weight: 700;">날씨별 엑티비티</h2>
	<p2>오늘 날씨에 맞는 엑티비티를 찾아봐요.</p2>
	<hr style="color: #c0c0c0; margin-top: 10px;" />
</div>
<div class="weater-container-box" style="margin-left: 5%; margin-top: 7%;">
	<div class="city" style="font-size: 30px; font-weight: 700;"></div>
	<div class="weather-icon"></div>
	<div class="temperature" style="font-size: 30px; color: red; margin-top: 40px;"></div>
	<div id="recommendation1"></div>
	<div id="recommendation2"></div>
	<br/>
	<div class="clock">
      <span id="Seoul"></span>
    </div>
</div>
<div class="recommend_place">
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>
	<div class="recommend_place_box">
		<img src="https://www.daejeontour.co.kr/ko/atch/atchFileStreamOut.do?atchId=1361&fileSeCode=THUM_IMAGE_FILE" alt="이미지">
		<p>여기에 텍스트를 입력하세요</p>
		<p>여기에 텍스트를 입력하세요</p>
	</div>

	<!-- 나머지 상자를 추가합니다. 필요한 만큼 복사하여 붙여넣으세요. -->
</div>

