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
	<script type="text/javascript">
		function findmap() {
			start = $('#input_start').val();
			end = $('#input_end').val();
		}
		
	$(document).ready(function() {
		endLati = "${endLati}";
        endLongi = "${endLongi}";
        endName = "${endName}";
        end = endLati + ' ' + endLongi + ' ' + endName;
        if(endLati != null)
           $("#input_end_lat").attr("value", endLati);
        if(endLongi != null)
           //$("#input_end_lng").attr("value", endLongi);
        if(endName != null)
           //$("#input_end").attr("value", endName);
     });
		
	</script>
</head>
<!-- <a href="/leggo/findmap.do?start="++" > -->
<!-- class="w3-cell" class="col-9" id="freesidebar" style="width: 60%;" id="freemenubtn"-->
	<!-- Sidebar/menu -->
	<div id="freesidebar">
		<div id="freemenubtn">
<!-- 			<form action="#" method="post">
				<input type="text" maxlength="20" style="color:blue;" placeholder="검색하세요" /><br/>
				<input type="reset" class="button primary color2" value="다시입력" style="font-size: 14pt;" />
				<input type="submit" class="button primary color2" value="검색" style="font-size: 14pt;" />
			</form> -->
			<form action="/leggo/findmap.do" method="post">
				<input type="hidden" id="input_start_lat" name="input_start_lat" class="color2" value="출발" style="background-color: #ffffff;font-size: 14pt; readonly"/>
				<input type="hidden" id="input_start_lng" name="input_start_lng" class="color2" value="출발" style="background-color: #ffffff;font-size: 14pt; readonly"/>
				<input type="text" id="input_start" name="input_start" class="color2" value="출발" style="background-color: #ffffff;font-size: 14pt; readonly"/>
				<!-- <input type="hidden" id="input_start_addr" name="input_start_addr" class="color2" value="출발" style="background-color: #ffffff;font-size: 14pt; readonly"/> -->
				<input type="hidden" id="input_end_lat" name="input_end_lat" class="color2" value="도착" style="background-color: #ffffff; font-size: 14pt; readonly"/>
				<input type="hidden" id="input_end_lng" name="input_end_lng" class="color2" value="도착" style="background-color: #ffffff;font-size: 14pt; readonly"/>
				<input type="text" id="input_end" name="input_end" class="color2" value="도착" style="background-color: #ffffff; font-size: 14pt; readonly"/>
				<!-- <input type="text" id="input_end_addr" name="input_end_addr" class="color2" value="도착" style="background-color: #ffffff;font-size: 14pt; readonly"/> -->
				<input type="submit" class="w3-button" value="길찾기" />
			</form>
			<!-- <form action="" method="get">	
				<input type="text" maxlength="10" style="color:white;" placeholder="검색하세요" /><br/>
				<input type="reset" class="button primary color2" value="다시입력" style="background-color: #ffffff; font-size: 14pt;" />
				<input type="submit" class="button primary color2" value="검색" style="background-color: #ffffff; font-size: 14pt;" />
				<a href="/leggo/findmap.do" onclick="findmap()" class="w3-button">길찾기</a> 
			</form>	 -->

	
			 <!-- $(document).ready(function() {
				$.get("/leggo/findRoad/findmap.do",
						{"slati":strSplit[0],
						 "slongi":strSplit[1],
						 "elati":endSplit[0],
						 "elongi":endSplit[1]
						},
						function(data) {
							allStr = strSplit[0]+", "+strSplit[1]+", "+endSplit[0]+", "+endSplit[1];
							alert("???????????? " + allStr);
							$('#findmap').val(allStr);
		
						},
						"text")
			}); --> 
			
			
			<!-- <button><a href="https://map.kakao.com/?eX='+desSplit[0]+'&eY='+desSplit[1]+'&eName=아가방빌딩&sX='+curSplit[0]+'&sY='+curSplit[1]+'&sName=멀티캠퍼스 역삼" target="_blank" style="text-decoration:none">길찾기</a></button> -->
			<button onclick="currentLoc()" class="w3-button">현재위치</button>
			<a href="/leggo/findmap.do" onclick="" class="w3-button">★</a> 
			<a href="/leggo/parking.do" onclick="" class="w3-button">P</a>
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
	
<!-- 	
	
	<h2 class="w3-gray" style="text-shadow:1px 1px 0 #444;font-size:20px">서울시 강남구 역삼동</h2>
	<div style="text-align: center; margin-bottom: 10px; ">
		<a href="road_map.html" class="button primary color2"
			style="width: 70%; font-size: 20px;">길찾기</a><br />
	</div> -->
</body>
</html>