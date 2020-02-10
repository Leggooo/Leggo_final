<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LEGGO</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="/leggo/css/main_jw.css">
	<link rel="stylesheet" href="/leggo/css/member/myInfo.css">
</head>
<body id="myInfoLayout-body">
	<div class="container" id="navi">
		<div class="row">	
			<div class="col-xs-12">
				<!-- TOP -->
				<tiles:insertAttribute name="top"></tiles:insertAttribute>
			</div>
			<div class="col-xs-3">
				<!-- MENU -->
				<tiles:insertAttribute name="menu"></tiles:insertAttribute>
			</div>
			<div class="col-xs-9" id="myInfoLayout-content">
				<!-- CONTENT -->
				<tiles:insertAttribute name="content"></tiles:insertAttribute>
			</div>
		</div>
	</div>
</body>
</html>