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

				var cityNameKorean = '충주'; // 도시 이름 한국어 표시용
				var cityNameEnglish = 'Chungju'; // 도시 이름 영어 API 요청용

				var params = {
					q: cityNameEnglish,
					appid: apiKey,
					units: 'metric'
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
						$('.city').text(cityNameKorean);
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
						$('#parkPlacesContainer').show();
						$('#recreationalForestsContainer').show();
						$('#museumContainer').show();
						$('#artMuseumContainer').show();
						$('#historicalSiteContainer').show();

					} else if (weatherDescription.includes('clouds')) {
						recommendation1 = '금일 구름이 많은 날씨입니다.';
						recommendation2 = '이런 활동 어떠세요?';
						$('#parkPlacesContainer').show();
						$('#recreationalForestsContainer').show();
						$('#museumContainer').show();
						$('#artMuseumContainer').show();
						$('#historicalSiteContainer').show();
					} else if (weatherDescription.includes('rain')) {
						recommendation1 = '금일 비가 오고 있습니다.';
						recommendation2 = '야외활동 말고, 이런 실내 활동 어떠세요?';
						$('#parkPlacesContainer').hide();
						$('#recreationalForestsContainer').hide();
						$('#museumContainer').show();
						$('#artMuseumContainer').show();
						$('#historicalSiteContainer').hide();
					} else {
						recommendation1 = '추천: 도시를 탐험하세요!';
						$('#parkPlacesContainer').show();
						$('#recreationalForestsContainer').show();
						$('#museumContainer').show();
						$('#artMuseumContainer').show();
						$('#historicalSiteContainer').show();
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
	<br />
	<div class="clock">
		<span id="Seoul"></span>
	</div>
</div>
<div class="recommend_place">
	<!-- 공원 컨테이너 -->
	<div id="parkPlacesContainer">
		<!-- 데이터베이스에서 가져온 공원 데이터를 표시할 컨테이너 -->
		<div class="row">
			<!-- 공원 데이터 순회 -->
			<c:forEach items="${parkPlaces}" var="parkPlace">
				<a class="square-box" href="../trip/themeDetail?id=${parkPlace.id}"> <!-- 이미지와 이름 표시 --> <img src="${parkPlace.imgAdr}"
					alt="이미지"
				>
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
				<a class="square-box" href="../trip/themeDetail?id=${recreationalForest.id}"> <!-- <img> 태그의 'src' 속성을 'recreationalForest' 객체의 'imgAdr' 필드 값으로 채웁니다. -->
					<img src="${recreationalForest.imgAdr}" alt="이미지"> <!-- <p> 태그의 내용을 'recreationalForest' 객체의 'name' 필드 값으로 채웁니다. -->
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
				<a class="square-box" href="../trip/themeDetail?id=${museum.id}"> <!-- 이미지와 이름 표시 --> <img src="${museum.imgAdr}"
					alt="이미지"
				>
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
				<a class="square-box" href="../trip/themeDetail?id=${artMuseum.id}"> <!-- 이미지와 이름 표시 --> <img src="${artMuseum.imgAdr}"
					alt="이미지"
				>
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
				<a class="square-box" href="../trip/themeDetail?id=${historicalSite.id}"> <!-- 이미지와 이름 표시 --> <img
					src="${historicalSite.imgAdr}" alt="이미지"
				>
					<p>${historicalSite.name}</p>
				</a>
			</c:forEach>
		</div>
	</div>
</div>