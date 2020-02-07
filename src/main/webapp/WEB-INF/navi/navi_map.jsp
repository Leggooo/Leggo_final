<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content color1 span-6" id="map" style="height: 95%;"></div>
	<div id="clickLatlng" style="color: white;width:100%;"></div>
	<script>
		// :마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀 오버레이입니다
		var placeOverlay = new kakao.maps.CustomOverlay({
			zIndex : 1
		}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		markers = [], // 마커를 담을 배열입니다
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

		var container = document.getElementById('map');
		//지도를 담을 영역의 DOM 래퍼런스
		var options = {//지도를 생성할 때 필요하 기본 옵션
			/* center: new kakao.maps.LatLng(37.38611, 126.570667),//지도의 중심좌표 */
			//center : new kakao.maps.LatLng(37.4871, 127.0529),//지도의 중심좌표
			center : new kakao.maps.LatLng(37.5279, 127.0055),//지도의 중심좌표
			level : 3
		// 지도의 레벨(확대, 축소 정도)
		};

		//지도를 표시할 div와 지도 옵션으로 지도를 생성한다.
		var map = new kakao.maps.Map(container, options);
		// :장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(map);
		var locPosition;
		var lat;
		var lng;
		//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다.
		var mapTypeControl = new kakao.maps.MapTypeControl();
		
		// 마커가 표시될 위치입니다 
		//style="padding:5px;"
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				lat = position.coords.latitude; //위도
				lng = position.coords.longitude; //경도

				locPosition = new kakao.maps.LatLng(lat, lng), //마커가 표시될 위치
				message = '<div>여기에 계신가요?</div>';
				//마커와 인포윈도우를 표시한다.
				displayMarker(locPosition, message);
			});
		} else {

		}

		//지도에 컨트롤을 추가해야 지도위에 표시됩니다.
		//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 
		//정의하는데 TOPRIGHT은 오른쪽
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		//지도 확대 축소를 제어할 수 있는 줌 컨트롤을 생성합니다.
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.LEFT);
		
		//지도에 마커와 인포윈도우를 표시하는 함수이다.
		function displayMarker(locPosition, message) {

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});

			//map.getCenter()를 하면 현재 위치로부터 
			//지도의 중심 좌표를 찍어주기에 역삼동 현재 위치가
			//아니라 논현동을 찍어준다
			//지도위에 마커를 표시합니다.
			marker.setMap(map);

			//인포윈도우에 표시할 내용
			var iwContent = message, iwRemoveable = true,
			//인포윈도우 표시 위치입니다.
			iwPosition = new kakao.maps.LatLng(locPosition);
			//인포윈도우를 생성한다.
			var infowindow = new kakao.maps.InfoWindow({
				content : iwContent,
				removable : iwRemoveable
			});

			//인포윈도우를 마커위에 표시한다.
			infowindow.open(map, marker);
			//지도 중심좌표를 접속위치로 변경한다.
			map.setCenter(locPosition);
			
			
			//,33.450701,126.570667"
			

			
			
			//지도 마커에 클릭 이벤트를 등록합니다.
			//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
				//클릭한 위도, 경도 정보를 가져옵니다
				var latlng = mouseEvent.latLng;
				//마커 위치를 클릭한 위치로 옮깁니다
				marker.setPosition(latlng);
				
				var message = '클릭한 위치의 위도는' + latlng.getLat() + '이고,';
				message += '경도는' + latlng.getLng() + '입니다';
				
				var resultDiv = document.getElementById('clickLatlng');
				resultDiv.innerHTML = message;
				
				
				alert(latlng.getLat());
				alert(latlng.getLng());
				
				//인포윈도우에 표출될 내용이므로 HTML문자열이나 document element가 가능하다
				message1 = '<div style="padding: 5px;">Hello World!<br>'+
				'<a href="https://map.kakao.com/link/to/Hello World!,'+latlng.getLat()+
				','+latlng.getLng()+'style="color:blue" target="_blank">크게보기</a>&nbsp;'+
				'<a href="https://map.kakao.com/link/to/Hello World!,'+latlng.getLat()+
				','+latlng.getLng()+'style="color:blue" target="_blank">길찾기'+
				'</a></div>';
					
				iwContent = message1;
				var infowindow = new kakao.maps.InfoWindow({
						content : iwContent,
						removable : iwRemoveable
				});
				infowindow.open(map, marker);
			});
		}
	</script>
</body>
</html>