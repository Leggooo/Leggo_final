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
	width: 75%;
	}
	#searchClick{
	width: 20%;
	background-color: skyblue;
	}
	#currentLoc{
		color: white;
	}
	
	</style>
	<script type="text/javascript">
		function myFunction() {
		  document.getElementById("demo").innerHTML = "서울시  강남구 테헤란로 212 <br/>(역삼동) 멀티캠퍼스";
		}
		
	</script>
</head>
<body>
	<!-- Sidebar/menu -->
	<div id="freesidebar">
	 <div id="freemenubtn">
		  	<form action="" method="get" class="searchBar">
				<div class="w3-cell-row"">
					<div class="w3-cell" id="search">
				  		<input type="text"  placeholder="검색하세요"/>
				  	</div>
				  	<div class="w3-cell" id="searchClick">
				  		<a href="#" onclick="" >검색</a>
				  	</div>
				</div>
			</form>
		  <button onclick="myFunction()"class="w3-button" id="currentLoc">현재위치</button>
		<p id="demo"></p>
		  <a href="#" onclick="" class="w3-button">주변 주차장</a> 
		  <a href="#" onclick="" class="w3-button">최근 방문</a>
		  <a href="#" onclick="" class="w3-button">즐겨찾기</a>
		  
	  </div>
	</div>
</body>
</html>