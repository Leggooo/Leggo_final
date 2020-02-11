<%@page import="com.iot.point.pointVO"%>
<%@page import="com.iot.member.memberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포인트 충전 : LEGGO</title>
</head>
<body style="width: 500px;height: 500px;">
<%-- <% pointVO point = (pointVO)request.getAttribute("point"); %>
	<form action="/leggo/point/chargePoint.do" method="post">
		<input type="text" name="user_id" value="<%=point.getUser_id() %>">
		<input type="text" name="pointAvail" value="<%=point.getPointAvail() %>">
		<input type="number" name="pointChange" placeholder="충전 금액">
		<input type="text" name="userGrade" value="<%=point.getUserGrade() %>">
		<input type="submit">
	</form> --%>
</body>
</html>