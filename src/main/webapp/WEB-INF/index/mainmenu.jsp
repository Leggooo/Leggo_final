<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/leggo/css/mainmenu.css">
<title>Menu Page</title>
</head>
<body>
 	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-1">
 				<div id="myNav" class="overlay">
					<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
					<div class="overlay-content">
						<a href="/leggo/home.do">로그아웃</a>
						<a href="/leggo/profile.do">회사소개</a>
						<a href="/leggo/news.do">뉴스</a> 
						<a href="/leggo/myInfo.do">회원정보</a> <a
							href="/leggo/inbox.do">쪽지함</a>
					</div>
				</div>
				<span style=" cursor: pointer" onclick="openNav()">
					<img id="openBtn" src="/leggo/images/header-logo.png">
				</span>
				<script>
					function openNav() {
						document.getElementById("myNav").style.width = "100%";
					}
					function closeNav() {
						document.getElementById("myNav").style.width = "0%";
					}
				</script>

			</div>
			<div class="col-sm-11">
				<div id="secondLogo">
					<a href="/leggo/menu.do"> <img
						src="/leggo/images/MainLogo.png" width=10% height=10%>
					</a>
				</div>
			</div>
		</div>
		<div id="content2">
			<div class="menuBtn">
				<a
					href="/leggo/navi.do">
					<img src="/leggo/images/Picture5.png" alt="location"
					class="menuImg">
				</a>
			</div>
			<div class="menuBtn">
				<a
					href="/leggo/parking.do">
					<img src="/leggo/images/Picture2.png" alt="parking"
					class="menuImg">
				</a>
			</div>
			<div class="menuBtn">
				<a href="/leggo/lastmile.do"> <img
					src="/leggo/images/Picture3.png" alt="lastMile" class="menuImg">
				</a>
			</div>
			<div class="menuBtn">
				<a href="/leggo/freeboardmain.do">
					<img src="/leggo/images/Picture4.png" alt="community"
					class="menuImg">
				</a>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-6" id="left">
					<a href="https://www.naver.com"> <img
						src="/leggo/images/left.png" alt="leftNext" id="leftNext">
					</a>

				</div>
				<div class="col-md-6" id="right">
					<a href="https://www.naver.com"> <img
						src="/leggo/images/right.png" alt="rightNext" id="rightNext">
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>