<%@page import="com.iot.parking.parkingVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>다른 이미지로 마커 생성하기</title>
    
</head>
<body>
<!-- jQuery쓰기 -->
<% ArrayList<parkingVO> list = (ArrayList<parkingVO>)request.getAttribute("parkingInfo"); %>

<div id="map" style="width:95%;height:120%;"></div>

<script type="text/javascript" src="058c8dd884377b38875fd39e9587e919"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.54699, 127.09598), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
if(navigator.geolocation) {
	navigator.geolocation.getCurrentPosition(function(position) {
		var lat = position.coords.latitude; //위도
		var	lng = position.coords.longitude; //경도
		
		var locPosition = new kakao.maps.LatLng(lat, lng), //마커가 표시될 위치
			message = '<div style="padding:5px;">현재 위치</div>';
		//마커와 인포윈도우를 표시한다.
		displayMarker(locPosition,message);
	
	});
} else {
	
}

//지도에 마커와 인포윈도우를 표시하는 함수이다.
function displayMarker(locPosition, message){
					
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			map: map,
			position : locPosition 
		});
		      
		// 마커가 지도 위에 표시되도록 설정합니다
		/* marker.setMap(map);  */
		
		//인포윈도우에 표시할 내용
		var iwContent = message,
			iwRemoveable = true;
		//인포윈도우를 생성한다.
		var infowindow = new kakao.maps.InfoWindow({
			content : iwContent,
			removable : iwRemoveable
		});
		
		
		//인포윈도우를 마커위에 표시한다.
		infowindow.open(map,marker);
		//지도 중심좌표를 접속위치로 변경한다.
		map.setCenter(locPosition);
}	

var imageSrc = '/leggo/images/parking_icon.png', // 마커이미지의 주소입니다    
    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
    markerPosition1 = new kakao.maps.LatLng(37.5033, 127.0387); // 마커가 표시될 위치입니다
    markerPosition2 = new kakao.maps.LatLng(37.5043, 127.0242); // 마커가 표시될 위치입니다
    markerPosition3 = new kakao.maps.LatLng(37.5053, 127.0357); // 마커가 표시될 위치입니다
    markerPosition4 = new kakao.maps.LatLng(37.5063, 127.0297); // 마커가 표시될 위치입니다

// 마커를 생성합니다
var marker1 = new kakao.maps.Marker({
    position: markerPosition1,
    image: markerImage // 마커이미지 설정 
});
var marker2 = new kakao.maps.Marker({
    position: markerPosition2,
    image: markerImage // 마커이미지 설정 
});
var marker3 = new kakao.maps.Marker({
    position: markerPosition3,
    image: markerImage // 마커이미지 설정 
});
var marker4 = new kakao.maps.Marker({
    position: markerPosition4,
    image: markerImage // 마커이미지 설정 
});

// 마커가 지도 위에 표시되도록 설정합니다
marker1.setMap(map);  
marker2.setMap(map);  
marker3.setMap(map);  
marker4.setMap(map);  

</script>
</body>
</html>