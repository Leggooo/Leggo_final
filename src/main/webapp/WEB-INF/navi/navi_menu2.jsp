<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="/leggo/css/main_jw.css">
	
	
	<style type="text/css">
	.searchBar{
     /* background-color: grey; */
     width: 100%;
     border-radius: 10px;
	}
	#search{
	width: 120%;
	height: 120%;
	}
	#searchClick{
	color: #fff;
	width: 100%;
	height: 50px;
	background-color: skyblue; 
	}
	#currentLoc{
		color: white;
	}
	input[type=text] {
 		width: 100%;
 			height: 30px;
  		box-sizing: border-box;
						}
	</style>
	
	<script type="text/javascript">
		function findmap() {
			start = $('#input_start').val();
			end = $('#input_end').val();
		}
	</script>
</head>
<body>
	<!-- Sidebar/menu -->
	<div id="freesidebar">
	 <div class="container">
				
		  	<form action="/leggo/findmap.do" method="post" class="searchBar">
				<div class="w3-cell-row"">
					<!-- <div class="w3-cell" id="search">
				  		<input type="text"  placeholder="출발지"/>
				  		<input type="text"  placeholder="도착지"/>
				  	</div> -->
				  	<div class="w3-cell" id="search">
				  		
				  		<input type="hidden" id="input_start_lat" name="input_start_lat" class="color2" value="출발" style="background-color: #ffffff;font-size: 14pt; readonly"/>
						<input type="hidden" id="input_start_lng" name="input_start_lng" class="color2" value="출발" style="background-color: #ffffff;font-size: 14pt; readonly"/>
						<input type="text" id="input_start" name="input_start" class="color2" placeholder="출발지" style="background-color: #ffffff;font-size: 11pt; readonly"/>
						<input type="hidden" id="input_end_lat" name="input_end_lat" class="color2" value="도착" style="background-color: #ffffff; font-size: 14pt; readonly"/>
						<input type="hidden" id="input_end_lng" name="input_end_lng" class="color2" value="도착" style="background-color: #ffffff;font-size: 14pt; readonly"/>
						<input type="text" id="input_end" name="input_end" class="color2" placeholder="도착지" style="background-color: #ffffff; font-size: 11pt; readonly"/>
						<!-- <input type="submit" type="submit" onclick="" value="길찾기"> -->
						<input type="submit" id="searchClick"value="길찾기" />
						<!-- <input type="submit" id="searchClick" value="길찾기" style="background-color: #ffffff; font-size: 14pt;" /> -->
				  	</div>
				</div>
			</form>
		 <button onclick="currentLoc()" class="w3-button">현재위치</button>
		  <a href="/leggo/navi/favorite.do"><button class="w3-button">즐겨찾기</button> </a>	
		  <a href="/leggo/navi/recent.do"><button class="w3-button">최근방문</button> </a>	
		  <a href="/leggo/parking.do"><button class="w3-button">주차장으로 이동</button></a>	
		  <a href="/leggo/lastmile.do"><button class="w3-button">라스트마일로 이동</button> </a>
		  
	  </div>
	</div>
</body>
</html>