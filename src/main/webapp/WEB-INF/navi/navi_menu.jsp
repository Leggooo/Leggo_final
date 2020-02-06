<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<style type="text/css">
	
	input::-webkit-input-placeholder {
		color: red;
		font-style: italic;
	}

	input::-ms-input-placeholder {
		color: red;
		font-style: italic;
	}
</style>
	
</head>
<body>
<!-- class="w3-cell" class="col-9" id="freesidebar" style="width: 60%;" id="freemenubtn"-->
	<!-- Sidebar/menu -->
	<div id="freesidebar">
		<div id="freemenubtn">
			<form action="" method="get">
				<input type="text" maxlength="10" style="color:white;" placeholder="검색하세요" /><br/>
				
				<input type="reset" value="다시입력" style="background-color: #ffffff; font-size: 14pt;" />
				<input type="submit" value="검색" style="background-color: #ffffff; font-size: 14pt;" />
			
			</form>
			<h2 class="w3-gray" style="text-shadow:1px 1px 0 #444;font-size:20px">서울시 강남구 역삼동</h2>
			<a href="#" onclick="" class="w3-button">길찾기</a> 
			<a href="#" onclick="" class="w3-button">★</a> 
			<a href="http://70.12.224.100:8088/leggo/parking.do" onclick="" class="w3-button">P</a>
			<a href="/leggo/lastmile.do" onclick="" class="w3-button">Last</a>
			
	<!-- 			<div class="w3-cell-row">
	
					<div class="w3-cell">
				  		<input type="text" class="col-8" placeholder="검색하세요"/>
				  	</div>
				
				  	<div class="w3-cell">
				  		<a href="#" onclick="" class="w3-button w3-padding-small col-4">검색</a>
				  	</div>
				
				</div> -->
			
		</div>
	</div>
	
	<div style="text-align: center; margin-bottom: 10px; ">
		<a href="road_map.html" class="button primary color2"
			style="width: 70%; font-size: 20px;">길찾기</a><br />
	</div>
</body>
</html>