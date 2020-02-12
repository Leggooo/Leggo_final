<%@page import="com.iot.point.pointVO"%>
<%@page import="com.iot.member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>예약하기 : LEGGO</title>
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<style type="text/css">
		table {
			width: 100%;
			background-color: white;
			color : black;
		}
		h2 {
			margin-top: 0px;
			color: white;
		}
	</style>
</head>
<body class="main_frame" style="background-color: #02aab0;">
<%	pointVO point = (pointVO)request.getAttribute("mypoint");
	String user_id = (String)session.getAttribute("user_id");
	String parking_code = (String)request.getAttribute("parking_code");
	if(point == null && user_id ==null){
		System.out.println("둘다 널값");
%>	로그인하고 오세요~
<%
	}else{
%>
	<form action="/leggo/resvInsert.do" method="post" style="border: 1px solid; text-align: center">
		<div class="field">
 			<input type="text" name="id" disabled="disabled" value="<%=user_id %>">
			<input type="hidden" name="user_id" value="<%=user_id %>">
		</div>
		<div class="field">
			<input type="text" name="point" disabled="disabled" value="<%=point.getPointAvail() %>">
			<input type="hidden" name="pointAvail" value="<%=point.getPointAvail() %>">
			<input type="text" name="license_plate" placeholder="차 번호">
		</div>
		<div class="field">
			<input type="number" name="rv_price" placeholder="예약금액">
		</div>
		<div class="field">
			<input type="hidden" name="parking_code" value="<%=parking_code %>">
		</div>
		<!-- <div class="field">
			<input type="text" name="rv_time" placeholder="예약시간">
		</div> -->
		<div class="field">
			<input type="submit" id="submitBtn">
		</div>
	</form>
<%}%>
</body>
</html>