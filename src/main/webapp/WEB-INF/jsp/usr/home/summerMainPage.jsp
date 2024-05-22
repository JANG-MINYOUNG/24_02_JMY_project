<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	document.addEventListener("DOMContentLoaded", function() {
    const videos = document.querySelectorAll('.fullscreen-video');
    let currentVideoIndex = 0;

    function changeVideo() {
        videos.forEach((video, index) => {
            if (index === currentVideoIndex) {
                video.classList.add('active');
                video.play();
            } else {
                video.classList.remove('active');
                video.pause();
            }
        });

        currentVideoIndex++;
        if (currentVideoIndex >= videos.length) {
            currentVideoIndex = 0;
        }
    }

    // Change video every 5 seconds (5000 milliseconds)
    setInterval(changeVideo, 5000);
});
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // <a> 태그 요소 가져오기
        const scrollToDestinationLink = document.getElementById('scrollToDestination');

        // <a> 태그에 클릭 이벤트 리스너 추가
        scrollToDestinationLink.addEventListener('click', function(event) {
            event.preventDefault(); // 기본 탐색 동작 방지

            // 대상 JSP 파일 내에서 원하는 위치로 스크롤
            // x와 y 좌표를 원하는 값으로 변경하세요
            scrollToPosition("/usr/trip/daeJeon", 0, 0);
        });
    });

    // 대상 JSP 파일 내에서 특정 위치로 스크롤하는 함수
    function scrollToPosition(targetUrl, x, y) {
        // 대상 JSP 파일 가져오기
        fetch(targetUrl)
            .then(response => response.text())
            .then(html => {
                // HTML을 구문 분석하기 위한 임시 컨테이너 요소 생성
                const tempContainer = document.createElement('div');
                tempContainer.innerHTML = html;

                // 구문 분석된 HTML 내에서 원하는 위치로 스크롤
                window.scrollTo(x, y);
            })
            .catch(error => console.error('HTML 가져오기 또는 구문 분석 오류:', error));
    }
</script>

<div class="jb-box">
	<div class="video-container">
		<video muted autoplay loop class="fullscreen-video active">
			<source
				src="https://cdn.pixabay.com/video/2021/05/22/74890-553838570_tiny.mp4"
			>
		</video>
		<video muted autoplay loop class="fullscreen-video">
			<source
				src="https://cdn.pixabay.com/video/2019/07/19/25356-351366267_tiny.mp4"
			>
		</video>
		<video muted autoplay loop class="fullscreen-video">
			<source
				src="https://cdn.pixabay.com/video/2020/11/02/54077-476396626_tiny.mp4"
			>
		</video>
	</div>
	<div class="text-box">
		<h2 style="color: white;">2024년 물놀이 시즌</h2>
		<p class="spring-info" style="color: #5363CF;">
			대전, 충청도 <span style="font-size: 32px;">바다 보러가자!</span>
		</p>
		<p class="spring-greeting" style="color: white; font-size: 24px;">안녕, 여름!</p>
		<p style="color: white; font-size: 24px;">올 여름엔 GABODA와 함께!</p>
	</div>
</div>

<div class="nav-box"  >
	<div class="text-box2">
		<h2>
			여름, 시즌 <span class="bold" style="font-weight: 800;">여행지</span>
		</h2>
		<a href="/usr/trip/main">추천 여행지 바로가기</a>
	</div>

	<div class="img-box2">
		<img src="https://i.ibb.co/nPZh7qf/20.png" alt="" />
	</div>
	<div class="nav-box2-container">
		<div class="nav-box2">
			<a href="">추천! 테마여행</a> <a href="/usr/trip/daeJeon" id="scrollToDestination">추천 여행지로 바로가기</a>
		</div>
		<div class="img-box3">
			<a href="#"><img src="https://i.ibb.co/2M657Lz/image.jpg" alt="image" border="0"></a>
		</div>
	</div>
	<div class="nav-box3-container">
		<div class="nav-box3">
			<a href="/usr/weatherTrip/main">날씨별! 액티비티</a> <a href="/usr/weatherTrip/main">날씨별 여행지 바로가기</a>
		</div>
		<div class="img-box4">
			<a href="#"><img
				src="https://lh3.googleusercontent.com/p/AF1QipNWcAVvjkMq1iLowvG5YwVy6Vh0DxZpcoWqk1Po=s680-w680-h510" alt="image"
				border="0"
			></a>
		</div>
	</div>
	<div class="nav-box4-container">
		<div class="nav-box4">
			<a href="/usr/companion/list">동행자 찾기!</a> <a href="/usr/companion/list">함께 떠날 동료 찾기</a>
		</div>
	</div>
	<div class="nav-box5-container">
		<div class="nav-box5">
			<a href="/usr/article/freeBoard/list?boardId=2&page=1">나만의 여행 일지 남기기</a> <a
				href="/usr/article/freeBoard/list?boardId=2&page=1"
			>여행일지 바로가기</a>
		</div>
	</div>
	<div class="nav-box-bg"></div>
</div>
<div class="weather-box">
	<h2>날씨별 여행지</h2>
	<div style="margin-top: 750px; font-size: 20px; margin-left: 400px">
		<label for="searchInput">지역 검색:</label> <input type="text" id="searchInput" placeholder="지역명을 입력하세요">
		<button id="searchButton">검색</button>
	</div>
	<div class="weather-info" style="font-size: 40px; margin-left: 400px">
		<div class="city" style="margin-top: 10px"></div>
		<div class="temperature"></div>
		<div class="weather-icon" style="background-color: rgba(0, 0, 0, 0.2); position: absolute; border-radius: 10px;"></div>
	</div>
	<img class="weather_place" src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F224568365460AA7607" alt="" />
</div>
<div class="theme_place">
	<p>추천! 테마여행</p>
	<div class="theme_nav">
		<a class="theme_nav_img1" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">공원</a> <a
			class="theme_nav_img2" style="color: #ffffff; text-align: center; line-height: 50px;" href="#"
		>휴양림</a> <a class="theme_nav_img3" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">박물관</a> <a
			class="theme_nav_img4" style="color: #ffffff; text-align: center; line-height: 50px;" href="#"
		>미술관</a> <a class="theme_nav_img5" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">유적지</a>
	</div>
	<div class="theme_nav_place1">
		<img src="https://i.ibb.co/9W4DyNn/image.jpg" alt="" class="first-image" /> <img src="https://i.ibb.co/7yMt3wP/1.jpg"
			alt="" class="second-image"
		/> <img src="https://i.ibb.co/hZDmpFN/2.jpg" alt="" class="third-image" />
		<p>대전지질박물관</p>
	</div>
	<div class="theme_nav_place2">
		<img src="https://i.ibb.co/RvkgQg0/image.jpg" alt="" class="first-image" /> <img src="https://i.ibb.co/j4GYkGk/1.jpg"
			alt="" class="second-image"
		/> <img src="https://i.ibb.co/ggb5Cxs/2.jpg" alt="" class="third-image" />
		<p>국립청주박물관</p>
	</div>
	<div class="theme_nav_bg"></div>
</div>

<script>
$(document).ready(function() {
    // 여러분의 OpenWeatherMap API 키
    var apiKey = '5d7a915f0fea8a335322d566d2ce04af';

    // 현재 날씨 데이터를 가져오기 위한 API 엔드포인트
    var apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

    // 날씨 데이터를 가져오는 함수
    function getWeatherData(city) {
        // API 요청을 위한 매개변수
        var params = {
            q: city, // 도시 이름 (한국어)
            appid: apiKey, // 여러분의 API 키
            units: 'metric', // 온도 단위 (섭씨)
            lang: 'kr' // 언어 설정 (한국어)
        };

        // AJAX 요청을 보냅니다.
        $.ajax({
            url: apiUrl,
            data: params,
            dataType: 'json',
            success: function(data) {
                // 날씨 정보를 표시합니다.
                displayWeather(data);
            },
            error: function(xhr, status, error) {
                // 오류 처리
                console.error('날씨 데이터 가져오기 오류:', error);
            }
        });
    }

    // 날씨 정보를 화면에 표시하는 함수
    function displayWeather(data) {
        // 날씨 아이콘 처리
        var weatherIcon = data.weather[0].icon;
        var iconUrl = 'http://openweathermap.org/img/wn/' + weatherIcon + '.png';
        $('.weather-icon').html('<img src="' + iconUrl + '">');

        // 온도 처리
        var temperature = Math.round(data.main.temp);
        $('.temperature').text(temperature + '°C');

        // 도시 이름 처리
        var cityName = data.name;
        $('.city').text(cityName);
    }

    // 검색 버튼 클릭 시
    $('#searchButton').click(function() {
        var city = $('#searchInput').val();
        getWeatherData(city);
    });

    // 초기 로딩 시 기본 도시 날씨 정보 표시
    getWeatherData('daejeon');
});
</script>


