<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>



<div class="trip_detail">
	<div class="trip_detail_box" style="margin-top: 20px;">
		<p1 style="font-size: 30px; font-weight: 700;"> ${Allfestival.name } <a href="/"
			style="font-size: 14px; margin-left: 700px; margin-right: 10px;"
		>홈</a> <a href="/usr/trip/main" style="font-size: 14px; margin-right: 10px;">시즌별 여행지</a> <a
			href="/usr/weatherTrip/main/" style="font-size: 14px;"
		>날씨별 여행지</a> </p1>
		<hr style="color: #c0c0c0; margin-top: 20px; width: 85%;" />
		<img style="margin-top: 20px; width: 500px; height: 400px;" src="${Allfestival.imgAdr }" alt="" />
		<h2>${Allfestival.name }</h2>
		<p3>· 축제 시기 <span style="font-size: 14px; color: black;">${Allfestival.period }</span></p3>
		<p4>· 축제 장소 <span style="font-size: 14px; color: black;">${Allfestival.roadLocation }</span></p4>
		<p5>· 문의처 <span style="font-size: 14px; color: black;">${Allfestival.phoneNumber }</span></p5>
		<p6>· 홈페이지 <a style="font-size: 14px; color: black;" href="${Allfestival.homePage }">${Allfestival.homePage }</a></p6>
	</div>
	<div class="detail_nav">
		<a href="" style="font-size: 20px; margin-right: 20px;">축제 소개</a> <a href=""
			style="font-size: 20px; margin-right: 20px;"
		>사진갤러리</a> <a href="" style="font-size: 20px;">오시는길</a>
		<hr style="color: #c0c0c0;" />
	</div>
	<div class="detail_info">
		<h2 style="font-size: 25px; font-weight: 700; margin-left: 25%; padding: 80px 0 80px 0;">축제 소개</h2>
		<div class="festival_body"
			style="margin-left: 35%; text-align: left; margin-top: -120px; margin-bottom: 80px; width: 1000px;"
		>
			<span style="font-size: 18px; font-weight: 300;">${Allfestival.body }</span>
		</div>
		<hr style="color: #c0c0c0; border: none; border-top: 3px dotted #c0c0c0;" />
	</div>
	<div class="detail_img">
		<h2 style="font-size: 25px; font-weight: 700; margin-left: 25%; padding: 80px 0 80px 0;">갤러리</h2>
		<div class="main">
			<div class="slider slider-for">
				<c:forEach items="${Allfestival2}" var="imgAdr">
					<div>
						<img src="${imgAdr.image_url}" alt="Slider Image">
					</div>
				</c:forEach>
			</div>
			<div class="slider slider-nav">
				<c:forEach items="${Allfestival2}" var="imgAdr">
					<div>
						<img src="${imgAdr.image_url}" alt="Slider Image">
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<hr style="color: #c0c0c0; border: none; border-top: 3px dotted #c0c0c0;" />
	<div class="place_nav">
		<h2 style="font-size: 25px; font-weight: 700; margin-left: 25%; padding: 80px 0 80px 0;">오시는 길</h2>
		<div id="map" style="width: 43%; height: 550px; margin-left: 35%; bottom: 120px;"></div>
	</div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c99cbd09de6559e5e1d3175408c59b9a"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(${Allfestival.longitude}, ${Allfestival.latitude}), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${Allfestival.longitude}, ${Allfestival.latitude}); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">${Allfestival.name } <br><a href="https://map.kakao.com/link/map/${Allfestival.name } ,${Allfestival.longitude}, ${Allfestival.latitude}" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/${Allfestival.name } <br><a href="https://map.kakao.com/link/map/${Allfestival.name } ,${Allfestival.longitude}, ${Allfestival.latitude}" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(${Allfestival.longitude}, ${Allfestival.latitude}); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
position : iwPosition, 
content : iwContent 
});

//마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>