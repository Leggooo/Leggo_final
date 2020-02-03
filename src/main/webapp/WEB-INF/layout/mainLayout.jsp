<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Leggo</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="/leggo/css/main.css">
	<link rel="stylesheet" href="/leggo/css/mycss.css">
	<link rel="stylesheet" href="/leggo/css/main_jw.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="overflow:auto;">
		<div class="row">	
			<div class="col-md-12">
				<!-- TOP -->
				<tiles:insertAttribute name="top"></tiles:insertAttribute>
			</div>
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