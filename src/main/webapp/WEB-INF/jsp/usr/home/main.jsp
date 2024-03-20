<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>

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
            <source src="https://cdn.pixabay.com/vimeo/520427411/66824.mp4?width=1280&hash=6c4ada6a92bd57883cca37907d498a441bd15e62">
        </video>
        <video muted autoplay loop class="fullscreen-video">
            <source src="https://cdn.pixabay.com/vimeo/520427439/66836.mp4?width=1280&hash=e4de1b3a5991ebe3fef02d733167be5680c6f16d">
        </video>
        <video muted autoplay loop class="fullscreen-video">
            <source src="https://cdn.pixabay.com/vimeo/331216046/22865.mp4?width=1280&hash=dc24307d8be3334125292c394a7e2f9388a85a03">
        </video>
    </div>
    <div class="text-box">
        <h2 style="color: white;">2024년 벚꽃 개화 시즌</h2>
        <p class="spring-info" style="color: #ff69b4;">대전, 충청도 <span style="font-size: 32px;">벚꽃 보러가자!</span></p>
        <p class="spring-greeting" style="color: white; font-size: 24px;">안녕, 봄!</p>
        <p style="color: white; font-size: 24px;">올 봄엔 GABODA와 함께!</p>
    </div>
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
			<a href="/usr/trip/daeJeon" id="scrollToDestination">추천 여행지로 바로가기</a>
		</div>
		<div class="img-box3">
			<a href="#"><img src="https://i.ibb.co/2M657Lz/image.jpg" alt="image" border="0"></a>
		</div>
	</div>		
	<div class="nav-box3-container">	
		<div class="nav-box3">
			<a href="/usr/weatherTrip/main">날씨별! 액티비티</a>
			<a href="/usr/weatherTrip/main">날씨별 여행지 바로가기</a>
		</div>
		<div class="img-box4">
			<a href="#"><img src="https://lh3.googleusercontent.com/p/AF1QipNWcAVvjkMq1iLowvG5YwVy6Vh0DxZpcoWqk1Po=s680-w680-h510" alt="image" border="0"></a>
		</div>
	</div>
	<div class="nav-box4-container">	
		<div class="nav-box4">
			<a href="/usr/companion/list">동행자 찾기!</a>
			<a href="/usr/companion/list">함께 떠날 동료 찾기</a>
		</div>
	</div>
	<div class="nav-box5-container">	
		<div class="nav-box5">
			<a href="/usr/article/freeBoard/list?boardId=2&page=1">나만의 여행 일지 남기기</a>
			<a href="/usr/article/freeBoard/list?boardId=2&page=1">여행일지 바로가기</a>
		</div>
	</div>
	<div class="nav-box-bg"></div>
</div>
<div class="weather-box">
	<h2>날씨별 액티비티</h2>
	<p1>GABODA 추천하는 액티비티</p1>
	<p2>지역 날씨별 재밌는 활동을 찾아보세요.</p2>
	<div class="search-box">
    <label class="input input-bordered">
        <input type="text" placeholder="지역을 입력해주세요." />
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor">
            <path fill-rule="evenodd" d="M9.965 11.026a5 5 0 1 1 1.06-1.06l2.755 2.754a.75.75 0 1 1-1.06 1.06l-2.755-2.754ZM10.5 7a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Z" clip-rule="evenodd" />
        </svg>
    </label>
	</div>
	<p3>Daejeon</p3>
	<p4>23일 (금) 오후 13:05</p4>
	<img class="weather_img" src="data:image/png;base64,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" alt="" />
	<img class="weather_place" src="https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F224568365460AA7607" alt="" />
</div>
<div class="theme_place">
	<p>추천! 테마여행</p>
	<div class="theme_nav">
		<a class="theme_nav_img1" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">공원</a>
		<a class="theme_nav_img2" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">휴양림</a>
		<a class="theme_nav_img3" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">박물관</a>
		<a class="theme_nav_img4" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">미술관</a>
		<a class="theme_nav_img5" style="color: #ffffff; text-align: center; line-height: 50px;" href="#">유적지</a>
	</div>
	<div class="theme_nav_place1">
		<img src="https://i.ibb.co/9W4DyNn/image.jpg" alt="" class="first-image" />
    	<img src="https://i.ibb.co/7yMt3wP/1.jpg" alt="" class="second-image" />
    	<img src="https://i.ibb.co/hZDmpFN/2.jpg" alt="" class="third-image" />
		<p>대전지질박물관</p>
	</div>
	<div class="theme_nav_place2">
		<img src="https://i.ibb.co/RvkgQg0/image.jpg" alt="" class="first-image" />
    	<img src="https://i.ibb.co/j4GYkGk/1.jpg" alt="" class="second-image" />
    	<img src="https://i.ibb.co/ggb5Cxs/2.jpg" alt="" class="third-image" />
		<p>국립청주박물관</p>
	</div>
	<div class="theme_nav_bg"></div>
</div>


