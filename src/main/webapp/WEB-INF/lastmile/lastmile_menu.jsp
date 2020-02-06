<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<!-- Sidebar/menu -->
	<div id="freesidebar">
		<div id="freemenubtn">
		 	<h2 class="w3-gray" style="text-shadow:1px 1px 0 #444;font-size:20px">서울시 강남구 역삼동</h2>
			<a href="/lastmile/bikeList.do" onclick="" class="w3-button">최근 방문</a> 
			<a href="#" onclick="" class="w3-button">즐겨 찾기</a> 
			<a href="#" onclick="" class="w3-button">주변 Lastmile</a>
			<form action="" method="get">
				<div class="w3-cell-row">
	
					<div class="w3-cell">
				  		<input type="text" class="col-8" placeholder="검색하세요"/>
				  	</div>
				
				  	<div class="w3-cell">
				  		<a href="#" onclick="" class="w3-button w3-padding-small col-4">검색</a>
				  	</div>
				
				</div>
			</form>
		</div>
	</div>
	
	<div>
		<a href="road_map.html" class="button primary color2"
			style="width: 70%; margin: 10px; font-size: 20px;">길찾기</a><br />
		<a href="road_map.html" class="button primary color2"
			style="width: 70%; margin: 10px; font-size: 20px;">주차장</a><br />
	</div>
</body>
</html>