<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Lastmile</title>
	<meta charset="UTF-8">
</head>
<body>
	<div class="content color1 span-4" id="map" style="height: 100%;">
		<script>
			var container = document.getElementById('map');
			//지도를 담을 영역의 DOM 래퍼런스
			var options = {//지도를 생성할 때 필요하 기본 옵션
				/* center: new kakao.maps.LatLng(37.38611, 126.570667),//지도의 중심좌표 */
				center : new kakao.maps.LatLng(37.4871, 127.0529),//지도의 중심좌표
				level : 3
			// 지도의 레벨(확대, 축소 정도)
			};

			var map = new kakao.maps.Map(container, options);
			//지도 생성 및 객체 리턴

			// 마커가 표시될 위치입니다 
			if(navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(function(position) {
					var lat = position.coords.latitude; //위도
					var	lng = position.coords.longitude; //경도
					
					var locPosition = new kakao.maps.LatLng(lat, lng), //마커가 표시될 위치
						message = '<div style="padding:5px;">여기에 계신가요?</div>';
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
				//marker.setMap(map);
			
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
			// 마커가 드래그 가능하도록 설정합니다 
			//marker.setDraggable(true);
		</script>
	</div>
</body>
</html>