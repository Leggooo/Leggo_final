<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="content color1 span-6" id="map" style="height: 100%;">
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
			
			
		</script>
	</div>
</body>
</html>