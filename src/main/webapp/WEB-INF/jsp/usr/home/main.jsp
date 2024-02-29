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

<%@ include file="../common/foot.jspf"%>