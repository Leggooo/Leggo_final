<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?
	appkey=be626cc1f959d4787a1d8381c33922e7&
	libraries=services,clusterer,drawing"></script>
	<!-- "content color1 span-6"  -->
	
	
<style>
    .map_wrap {position:relative;width:100%;height:500px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:5px;top:5px;border-radius: 5px; margin-left:40px; background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?
	appkey=be626cc1f959d4787a1d8381c33922e7&
	libraries=services,clusterer,drawing"></script>

</head>
<!-- class="content color1" -->
<body>
	<!-- <div class="map_wrap"> -->
		<div class="content color1 span-6" id="map" style="width:100%;height:90%;position:relative;overflow: hidden;"></div>
		<div class="hAddr">
			<span class="title">지도중심기준 행정동 주소정보</span>
			<span id="centerAddr"></span>
		</div>	
	<!-- </div> -->
	<!-- <input type="button" value="지도 확대/축소 끄기" onclick="setZoomable(false)" />
	<input type="button" value="지도 확대/축소 켜기" onclick="setZoomable(true)" /> -->
	<div id="clickLatlng" style="color: white; width: 100%;"></div>

	<script>
		// :마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀 오버레이입니다
		var placeOverlay = new kakao.maps.CustomOverlay({zIndex : 1}), 
		contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		markers = [], // 마커를 담을 배열입니다
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

		var container = document.getElementById('map');
		//지도를 담을 영역의 DOM 래퍼런스
		var options = {//지도를 생성할 때 필요하 기본 옵션
			center : new kakao.maps.LatLng(37.5279, 127.0055),//지도의 중심좌표
			level : 4
		// 지도의 레벨(확대, 축소 정도)
		};

		//지도를 표시할 div와 지도 옵션으로 지도를 생성한다.
		var map = new kakao.maps.Map(container, options);
		//주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		//클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
		infowindow = new kakao.maps.InfoWindow({zindex:1});
		// :장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(map);
		//일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다.
		var mapTypeControl = new kakao.maps.MapTypeControl();
		
		// 마커가 표시될 위치입니다 
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(function(position) {
				var lat = position.coords.latitude; //위도
				var lng = position.coords.longitude; //경도
				var locPosition = new kakao.maps.LatLng(lat, lng), //마커가 표시될 위치
				message = '<div>여기에 계신가요?</div>';
				//마커와 인포윈도우를 표시한다.
				displayMarker(locPosition, message);
			});
		} else {

		}
		//div속성 style="max-width: 50%"
		//지도에 컨트롤을 추가해야 지도위에 표시됩니다.
		//kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 
		//정의하는데 TOPRIGHT은 오른쪽
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		//지도 확대 축소를 제어할 수 있는 줌 컨트롤을 생성합니다.
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.LEFT);
		//버튼 클릭에 따라 지도 확대,축소 기능을 막거나 풀고 싶은 경우에는
		//map.setZoomable함수를 사용합니다
		
		//마우스 휠로 지도 확대, 축소 가능여부를 설정하지 못하게 막습니다
		map.setZoomable(false);	
		//키워드로 장소를 검색합니다
		
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);

		//지도에 마커와 인포윈도우를 표시하는 함수이다.
		function displayMarker(locPosition, message) {
			
			// 클릭한 위치를 표시할 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map,
				position : locPosition
			});
			
			alert(locPosition.toCoords().toString());

			var curString = locPosition.toCoords().toString();
			curSplit = curString.split(', ');
			message += curSplit[0]+','+curSplit[1]+'입니다';
			
			curSplit[0] = curSplit[0].substring(1, curSplit[0].length - 1);
			curSplit[1] = curSplit[1].substring(0, curSplit[1].length - 2);
			
			//map.getCenter()를 하면 현재 위치로부터 
			//지도의 중심 좌표를 찍어주기에 역삼동 현재 위치가
			//아니라 논현동을 찍어준다
			//지도위에 마커를 표시합니다.
			marker.setMap(map);		

			//인포윈도우에 표시할 내용
			iwContent = message, iwRemoveable = true,
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
			
		}	
		
		//searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		//지도 마커에 클릭 이벤트를 등록합니다.
		//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		//37.38611, 126.570667
/* 		var lon = 126.570667;
    	var lat = 37.38611;
		$.ajax({
    	url: 'https://apis.daum.net/local/geo/coord2addr?apikey=be626cc1f959d4787a1d8381c33922e7&longitude=' + lon + '&latitude=' + lat + '&inputCoordSystem=WGS84&output=json',
    		type: 'GET',
    		cache: false,
    		context: {},
    		crossOrigin: true,
   			 success: function(data) {
        		var jsonObj = $.parseJSON(data);
        		var contentText = document.getElementById('content');
            	contentText.innerHTML += "<br>동네 이름 : " + jsonObj.name + " / 전체 주소 : " + jsonObj.fullName + " / 나라 : " + jsonObj.name0;
   		 		},error:function(request,status,error){
        		alert("다시 시도해주세요.\n" + "code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
   		 	}
		}); */
		
		
		
		
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
			
/* 			searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
				if(status === kakao.maps.services.Status.Ok) {alert("dsf")
	            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>'; 
	            var content = '<div class="bAddr">' +
	                            '<span class="title">법정동 주소정보</span>' + 
	                            detailAddr + 
	                        '</div>';
					
				// 마커를 클릭한 위치에 표시합니다 
		        marker.setPosition(mouseEvent.latLng);
		        marker.setMap(map);	
				
	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            infowindow.setContent(content);
	            infowindow.open(map, marker);
				}
			}); */			
			
 			
				// 클릭한 위치를 표시할 마커를 생성합니다
				var marker = new kakao.maps.Marker({
					map : map,
				});				
			
				//클릭한 위도, 경도 정보를 가져옵니다
				latlng = mouseEvent.latLng;
				//마커 위치를 클릭한 위치로 옮깁니다
				marker.setPosition(latlng);
				
				var message = '클릭한 위치의 위도는' + latlng.getLat() + '이고,';
				message += '경도는' + latlng.getLng() + '입니다';
				
				var resultDiv = document.getElementById('clickLatlng');
				resultDiv.innerHTML = message;
				
				var desString = latlng.toCoords().toString();
				desSplit = desString.split(', ');
				
				desSplit[0] = desSplit[0].substring(1, desSplit[0].length - 1);
				desSplit[1] = desSplit[1].substring(0, desSplit[1].length - 2);
				
				message1 = '<div style="padding: 5px;">Hello World!<br>'+
				'<button><a href="https://map.kakao.com/?eX='+desSplit[0]+'&eY='+desSplit[1]+'&eName=아가방빌딩&sX='+curSplit[0]+'&sY='+curSplit[1]+'&sName=멀티캠퍼스 역삼" target="_blank" style="text-decoration:none">길찾기'+
				'</a></button></div>';
				
				iwContent = message1;
				var infowindow = new kakao.maps.InfoWindow({
					content : iwContent,
					removable : iwRemoveable
				});	
				infowindow.open(map, marker);	
		});		
				/* for(var i in StringSplit) {
					document.write('<p>'+StringSplit[i]+'</p>');
				} */
				
				//latlng.toCoords().toString(); // "(500000, 972532.3892234056)"
				//alert(latlng.toCoords().toString());
				//alert(latlng.getLng().toCoords().toString());
				/* var message = '클릭한 위치의 위도는' + desSplit[0] + '이고,';
				message += '경도는' + desSplit[1] + '입니다'; */
				
				//encodeURI 참고 사이트
				/* https://www.codingfactory.net/10377 */				
				
				//인포윈도우에 표출될 내용이므로 HTML문자열이나 document element가 가능하다
				/* message1 = '<div style="padding: 5px;">Hello World!<br>'+
				'<a href="https://map.kakao.com/link/map/Hello World!,'+latlng.getLat()+
				','+latlng.getLng()+'style="color:blue" target="_blank">크게보기</a>&nbsp;'+
				'<a href="https://map.kakao.com/link/to/Hello World!,'+latlng.getLat()+
				','+latlng.getLng()+'style="color:blue" target="_blank">길찾기'+
				'</a></div>'; */
				//encodeURI('https://map.kakao.com/?eX='+desSplit[0]+'&eY='+desSplit[1]+'&eName=아가방빌딩&sX='+curSplit[0]+'&sY='+curSplit[1]+'&sName=멀티캠퍼스 역삼" target="_blank')
				//var remove = /[\'\"<>]/gi;

				//message1.replace(remove, "");
				/* result = encodeURI(message1); */
				
				/* https://map.kakao.com/?eX=597463&eY=787519&eName=&eName=대전역 */	
		
			
				//현재 지도 중심좌표를 주소로 검색해서 지도 좌측 상단에 표시합니다.
		//map.getCenter()지도의 중심좌표를 반환한다.
	/* ========================================================================== */	
					/* 
						var infowindow = new kakao.maps.InfoWindow({
							content : iwContent,
							removable : iwRemoveable
						});

		           	content += message1;
		           	iwContent = content; */
		
		
		
		//중심 좌표나 확대 수준이 변경됬을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록한다
		//event : 지도 객체의 이벤트 관련 함수를 담은 네임스페이스
		//addListener(target, type, handler)
		//이벤트를 지원하는 지도 API 객체, 이벤트 이름, 이벤트를 처리할 함수
		kakao.maps.event.addListener(map, 'idle', function(){
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});
		
		function searchAddrFromCoords(coords, callback) {
		    // 좌표로 행정동 주소 정보를 요청합니다
		    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
		}

		function searchDetailAddrFromCoords(coords, callback) {
		    // 좌표로 법정동 상세 주소 정보를 요청합니다
		    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}
		
		//지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수이다
		function displayCenterInfo(result, status) {
			if(status === kakao.maps.services.Status.OK){
				var infoDiv = document.getElementById('centerAddr');
				for(var i=0;i<result.length;i++) {
					//행정동의 region_type값은 'H'이므로
					if(result[i].region_type === 'H') {
						infoDiv.innerHTML = result[i].address_name;
						break;
					}		
				}
			}
		}
			
	</script>
</body>
</html>