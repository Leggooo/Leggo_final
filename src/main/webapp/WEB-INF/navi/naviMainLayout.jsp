<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>naviMainLayout</title>	
	<style type="text/css">
 		.col-xl-3 .col-xl-9{
			padding: 15px;
			margin: 15px;
			margin-left: 5px;
		} 
	</style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<!-- <link rel="stylesheet" href="/leggo/css/main_jw.css"> -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- 카카오맵 -->

	
	<style type="text/css">
	body {
			font-family: 배달의민족 한나는 열한살;				
			/* background: #02AAB0;   */
			/* background: -webkit-linear-gradient(to top, #00CDAC, #02AAB0);  */
			background: linear-gradient(to top, #26a0da, #314755); 
			background-repeat: no-repeat;
			background-size: cover;  
			/*  background-color: red; */
			
			}
		.parkingLayout{
			background-color: white;
		}
	</style>
		
</head>
<body style="width:100%;height:100%;">
	<div class="container" >
		<div class="row">	
			<div class="col-md-12">
				<!-- TOP -->
				<tiles:insertAttribute name="top"></tiles:insertAttribute>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<!-- MENU -->
				<tiles:insertAttribute name="menu"></tiles:insertAttribute>
			</div>
			<div class="col-md-9">
				<!-- CONTENT -->
				<tiles:insertAttribute name="content"></tiles:insertAttribute>
			</div>
		</div>
	</div>
</body>

<!-- Scripts -->
<script src="/leggo/js/jquery.min.js"></script>
<script src="/leggo/js/browser.min.js"></script>
<script src="/leggo/js/breakpoints.min.js"></script>
<script src="/leggo/js/main.js"></script>
</html>