<%@page import="com.iot.point.pointVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>포인트 : LEGGO</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style type="text/css">
		th{
			font-size: 20px;
			font-weight: bold;
			background-color: #2f5597;
			color: white;
			text-align: center;
		}
	</style>
</head>
<body id="myInfoBody">
<% List<pointVO> plist = null;
if(request.getAttribute("resvlist")!=null){
	plist = (List<pointVO>)request.getAttribute("pointlist");  
%>
	<div class="container" style="height: 100%; width: 100%;">
	<h2 style="margin-top: 0px;">포인트</h2>
	<div class="field">
		<label title="현재 포인트 : 500"></label>
	</div>
		<table class="table table-bordered" id="parking_list" style="border: 1px solid; text-align: center">
			<tr>
				<th>번호</th>
				<th>잔여 포인트</th>
				<th>변동 포인트</th>
				<th>발생일</th>
				<th>만료일자</th>
				<th>회원등급</th>
			</tr>
			<% int listSize = plist.size(); %>
			<%for(int i=0;i<listSize;i++){ %>
				<tr>
					<td><%=i+1 %></td>
					<td><%=plist.get(i).getPointAvail() %></td>
					<td><%=plist.get(i).getPointChange() %></td>
					<td><%=plist.get(i).getPointDate() %></td>
					<td><%=plist.get(i).getPointExpDate() %></td>
					<td><%=plist.get(i).getUserGrade() %></td>
				</tr>
			<%}%>
		</table>
	</div>
	<%}else{ %>
	<h1>포인트 이용내역이 없습니다.</h1>
	<%} %>
</body>
</html>