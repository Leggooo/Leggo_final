<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div id="road">
		<img src="images/mark.jpg" alt="마크" width="50" height="50" />
		길 찾기
	</div>
	<div id="search">
		<form action="" method="get">
			<!-- <div id="input">  -->
			<input type="text" name="search" placeholder="검색하세요"
				style="width: 80%;" /><br />
			<!-- </div>  -->
			<input type="submit" class="button primary color2"
				style="font-size: 20px;" value="검색"> <input
				type="reset" class="button primary color2"
				style="font-size: 20px;" value="다시입력">
		</form>
	</div>
	<div id="back">
		<div id="menu">
			<input type="image" name="home" id="home"
				src="images/LeggoLogo.png" style="width: 85px; height: 55px;"
				onclick="location.href='https://www.google.com'" /><br />
			<!-- --------------메뉴4개 아이콘-------------- -->
			<div>
	
	
				<a href="road_map.html" class="button primary color2"
					style="width: 70%; margin: 10px; font-size: 20px;">길찾기</a><br />
				<a href="road_map.html" class="button primary color2"
					style="width: 70%; margin: 10px; font-size: 20px;">★</a><br />
				<a href="road_map.html" class="button primary color2"
					style="width: 70%; margin: 10px; font-size: 20px;">Last
					Miles</a><br />
			</div>
		</div>
	</div>
	<br />
	<div>
		<a href="#third"
			class="button primary color1 circle icon solid fa-angle-right">Next</a>
	</div>
</body>
</html>