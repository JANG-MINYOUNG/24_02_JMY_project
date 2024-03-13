<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ARTICLE DETAIL"></c:set>
<%@ include file="../common/head.jspf"%>

<!-- Add Slick Slider CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- Add Slick Slider theme CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
<!-- Add jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Add Slick Slider JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<div class="trip_detail">
    <div class="trip_detail_box" style="margin-top: 20px;">
        <p1 style="font-size: 30px; font-weight: 700;">
            2024 대전 서구 아트페스티벌
            <a href="/" style="font-size: 14px; margin-left: 450px; margin-right: 10px;">홈</a>
            <a href="/usr/trip/main" style="font-size: 14px; margin-right: 10px;">시즌별 여행지</a>
            <a href="/usr/weatherTrip/main/" style="font-size: 14px;">날씨별 여행지</a>
        </p1>
        <hr style="color: #c0c0c0; margin-top: 20px; width: 83%;"/>
        <img style="margin-top:20px; width: 500px; height: 400px;" src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="" />
        <h2>2024 대전 서구 아트페스티벌</h2>
        <p2>· 주최 <span style="font-size: 14px; color: black;">대전광역시 서구</span></p2>
        <p3>· 축제 시기 <span style="font-size: 14px; color: black;">매년 10월</span></p3>
        <p4>· 축제 장소 <span style="font-size: 14px; color: black;">샘머리,보라매공원(서구청앞) 및 서구 일원</span></p4>
        <p5>· 문의처 <span style="font-size: 14px; color: black;">042-288-2742</span></p5>
        <p6>· 홈페이지 <a style="font-size: 14px; color: black;" href="https://www.seogu.go.kr/prog/fstvl/tour/sub04_02/14/view.do" >https://www.seogu.go.kr/prog/fstvl/tour/sub04_02/14/view.do</a></p6>
    </div>
    <div class="detail_nav">
        <a href="" style="font-size: 20px; margin-right: 20px;">축제 소개</a>
        <a href="" style="font-size: 20px; margin-right: 20px;">사진갤러리</a>
        <a href="" style="font-size: 20px;">오시는길</a>
        <hr style="color: #c0c0c0;"/>
    </div>
    <div class="detail_info">
        <h2 style="font-size: 25px; font-weight: 700; margin-left: 25%; padding: 80px 0 80px 0;">축제 소개 <span style="font-size: 18px; margin-left: 20%; font-weight: 300;">도심 속에서 펼쳐지는 빛과 문화예술의 항연</span></h2>
        <hr style="color: #c0c0c0; border: none; border-top: 3px dotted #c0c0c0;"/>
    </div>
    <div class="detail_img">
        <h2 style="font-size: 25px; font-weight: 700; margin-left: 25%; padding: 80px 0 80px 0;">갤러리</h2>
        <div class="main">
            <div class="slider slider-for">
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 1"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 2"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 3"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 4"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 5"></div>
            </div>
            <div class="slider slider-nav">
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 1"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 2"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 3"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 4"></div>
                <div><img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMTFfMTAw/MDAxNjY1NDkyODMzNjUy.klAtiHswN-JOQuQJEphY_d4kykx_ppvngoBBrj-Hw4Yg.8ZDDXQxMvcM3owtIF6LLcvfQfMLOKNK9729uR12BgfIg.JPEG.first_seogu/2022_%EB%8C%80%EC%A0%84_%EC%84%9C%EA%B5%AC%ED%9E%90%EB%A7%81_%EC%95%84%ED%8A%B8%ED%8E%98%EC%8A%A4%ED%8B%B0%EB%B2%8C1.jpg?type=w800" alt="Image 5"></div>
            </div>
        </div>
    </div>
</div>