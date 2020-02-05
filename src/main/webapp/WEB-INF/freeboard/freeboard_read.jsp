<!DOCTYPE html>

<html lang="en">
<head>
	<title>LEGGO</title>
	<meta charset="UTF-8">
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		h1,h2,h3,h4,h5,h6 {font-family: "Oswald"}
		body {font-family: "Open Sans"}
		#line {
			border-top: 2px solid #365da2;
		}
		.watchreview{
			border-top: 2px solid #365da2;
		}
	</style>
</head> 
<body class="w3-light-grey">   
		<!-- w3-content defines a container for fixed size centered content, 
		and is wrapped around the whole page content, except for the footer in this example -->
		<div class="w3-content" style="max-width:1600px">   

	      <!-- Blog entry -->
	      <div class="w3-container w3-white w3-margin w3-padding-large">
	        <div class="w3-center">
	          <h3>글제목</h3>
	          <h5>게시자 아이디</h5>
	          <span>오늘 날짜</span>
	        </div>
			<div id="line">
				
			</div>
	        <div class="w3-justify">
	          <img src="/w3images/girl_hat.jpg" alt="Girl Hat" style="width:100%" class="w3-padding-16">
	          <p>
				게시자가 쓴 글, 게시물
	          <p class="w3-right"><button class="button" onclick="myFunction('demo1')" id="reviewBtn"><b>댓글보기</b></button></p>
	          <div class="w3-row w3-margin-bottom" id="demo1" style="display:none">
	            <hr>
	            <!-- 댓글보기 -->
	              <div class="watchreview">
	                <h4>댓글입력한 아이디  <span class="w3-opacity w3-medium">May 3, 2015, 6:32 PM</span></h4>
	                <p>와우!</p>
	              </div>
	          </div>
	        </div>
	      </div>
      </div>
      <script>
		// Toggle between hiding and showing blog replies/comments
		document.getElementById("myBtn").click();
		function myFunction(id) {
		  var x = document.getElementById(id);
		  if (x.className.indexOf("w3-show") == -1) {
		    x.className += " w3-show";
		  } else { 
		    x.className = x.className.replace(" w3-show", "");
		  }
		}
	</script>
</body> 
</html>


