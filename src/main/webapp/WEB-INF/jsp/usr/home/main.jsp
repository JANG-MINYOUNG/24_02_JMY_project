<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value=""></c:set>
<%@ include file="../common/head.jspf"%>

<div class="home-box">
	<div class="text-box">
		<h2 style="color: white;">2024년 벚꽃 개화 시즌</h2>
		<p class="spring-info" style="color: #ff69b4;">대전, 충청도 벚꽃 보러가자!</p>
		<p class="spring-greeting" style="color: white;">안녕, 봄!</p>
		<p style="color: white;">올 봄엔 GABODA와 함께!</p>
	</div>
	<div class="img-box">
		<img src="https://cdn.chungnamilbo.co.kr/news/photo/202208/673955_257859_2551.jpg" alt="">
	</div>
</div>

<div class="arrow-container">
  <button class="arrow left">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="60" height="40" viewBox="0 0 50 80" xml:space="preserve">
      <polyline fill="none" stroke="#000000" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" points="45.63,75.8 0.375,38.087 45.63,0.375"/>
    </svg>  
  </button>
  <div class="separator">01/10</div>
   <button class="arrow right">
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="60" height="40" viewBox="0 0 50 80" xml:space="preserve">
      <polyline fill="none" stroke="#000000" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" points="0.375,0.375 45.63,38.087 0.375,75.8"/>
    </svg>  
  </button>
</div>

<div class="nav-box">
	<div class="text-box2">
		<h2>봄, 시즌 <span class="bold" style="font-weight: 800;">여행지</span></h2>
		<p>추천 여행지 바로가기</p>
	</div>
	
	<div class="img-box2">
	<img src="https://i.ibb.co/nPZh7qf/20.png" alt="" /></div>
	<div class="nav-box2-container">	
		<div class="nav-box2">
			<a href="">추천! 테마여행</a>
			<a href="">추천 여행지로 바로가기</a>
		</div>
		<div class="img-box3">
			<a href="#"><img src="https://i.ibb.co/2M657Lz/image.jpg" alt="image" border="0"></a>
		</div>
	</div>		
	<div class="nav-box3-container">	
		<div class="nav-box3">
			<a href="">날씨별! 엑티비티</a>
			<a href="">날씨별 여행지 바로가기</a>
		</div>
		<div class="img-box4">
			<a href="#"><img src="https://lh3.googleusercontent.com/p/AF1QipNWcAVvjkMq1iLowvG5YwVy6Vh0DxZpcoWqk1Po=s680-w680-h510" alt="image" border="0"></a>
		</div>
	</div>
	<div class="nav-box4-container">	
		<div class="nav-box4">
			<a href="">동행자 찾기!</a>
			<a href="">함께 떠날 동료 찾기</a>
		</div>
	</div>
	<div class="nav-box5-container">	
		<div class="nav-box5">
			<a href="">나만의 여행 일지 남기기</a>
			<a href="">여행일지 바로가기</a>
		</div>
	</div>
	<div class="nav-box6"></div>
</div>

<div class="weather-box">
	<h2>날씨별 엑티비티</h2>
	<p1>GABODA 추천하는 엑티비티</p1>
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
</div>

<%@ include file="../common/foot.jspf"%>