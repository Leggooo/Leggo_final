<%@page import="com.iot.member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Leggo</title>
</head>
<body>
	<% memberVO user = (memberVO)session.getAttribute("user"); %>
	<div class="container-fluid">
	  <div class="row">
	    <!--맨 왼쪽 메뉴입니다 -->
	   <!--  <div class="col-1" id="blankMenu"></div> -->
	    <div class="col-2" id="leftMenu">
	    	<a href="/leggo/intro.do"><img src="/leggo/images/MainLogo.png" alt="Random Name" style="height: 70%; width: 100%; padding-left: 50px;">
	    </a></div>
	  	<!--가운데 빈 공간입니다 -->
	    <div class="col-6" id="blankMenu"></div>
	    <!--맨 오른쪽 메뉴 3개입니다 -->
	    <div class="col-4 rightMenu">
	    <% if(user != null){ %>
	    	<%= user.getUser_name() %>님!
	    	<a href=""><img src="/leggo/images/news.png" id="rImg1" style="width:20%;"></a>
	    	<a href=""><img src="/leggo/images/personInfo.png" id="rImg2" style="width:20%;"></a>
	    	<a href=""><img src="/leggo/images/chat.png" id="rImg3" style="width:20%;"></a>
	    <% }else{%>
	    	로그인버튼 넣기
	    <%}%>
	    </div>
	  </div>
	</div>
</body>
</html>