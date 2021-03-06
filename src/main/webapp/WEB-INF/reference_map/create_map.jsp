<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 생성하기</title>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?
	appkey=be626cc1f959d4787a1d8381c33922e7&
	libraries=services,clusterer,drawing"></script>
</head>
<body>
<!-- 37.5279, 127.0055 -->
	<div id="mapping" style="width: 100%; height: 500px;"></div>
	<script>
		//지도를 담을 영역의 DOM 래퍼런스(지도를 표시할 div)
		var mapContainer = document.getElementById('mapping');
		//지도를 생성할 때 필요한 기본 옵션
		var mapOptions = {
		//지도의 중심 좌표
			center: new kakao.maps.LatLng(37.5279, 127.0055),
		//지도의 레벨(확대, 축소 정도)
			level: 3
		}
		//지도를 표시할 div와 지도 옵션으로 지도를 생성한다.
		var map = new kakao.maps.Map(mapContainer, mapOptions);
		
		// 마커가 표시될 위치입니다 
		if (navigator.geolocation) {
			navigator.geolocation
					.getCurrentPosition(function(position) {
						var lat = position.coords.latitude; //위도
						var lng = position.coords.longitude; //경도

						var locPosition = new kakao.maps.LatLng(
								lat, lng), //마커가 표시될 위치
						message = '<div style="padding:5px;">여기에 계신가요?</div>';
						//마커와 인포윈도우를 표시한다.
						displayMarker(locPosition, message);

			});
		} else {

		}
		
		//지도에 마커와 인포윈도우를 표시하는 함수이다.
		function displayMarker(locPosition, message) {

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			//인포윈도우에 표시할 내용
			var iwContent = message, iwRemoveable = true;
			//인포윈도우를 생성한다.
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			//인포윈도우를 마커위에 표시한다.
			infowindow.open(map, marker);
			//지도 중심좌표를 접속위치로 변경한다.
			map.setCenter(locPosition);
			
			// 마커가 드래그 가능하도록 설정합니다 
			

		}
		
		
	</script>	
</body>
</html>