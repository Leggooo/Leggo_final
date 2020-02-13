<%@page import="com.iot.lastmile.RecentVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.iot.lastmile.FavoriteVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Insert title here</title>
	<meta charset="UTF-8">
</head>
<body>
	<% ArrayList<RecentVO> recentList = (ArrayList<RecentVO>)request.getAttribute("recentList"); %>
	<table class="hide" id="LastmileRecentTable">
	  	<thead>
	    	<tr>
		     	<th scope="col">대여소 이름</th>
		      	<th scope="col">위도</th>
		      	<th scope="col">경도</th>
		      	<th scope="col">길찾기로 이동</th>
	    	</tr>
	  	</thead>
	  	<tbody id="LastmileRecentTable_body">
	  	<% for(int i=0;i<recentList.size();i++) { 
	  		String name = favoriteList.get(i).getLocation_name();
	  		String location_name = name.substring(name.lastIndexOf(".")+1);%>
	    	<tr>
	    		<form action="" method="">
		      		<td><%= location_name %></td>
		      		<td><%= recentList.get(i).getLatitude() %></td>
		      		<td><%= recentList.get(i).getLongitude() %></td>
	    		</form>
	    		
	      		<td><input type="submit" class="w3-cell" id="setStartBtn" value="출발지"></input>
	      		<input type="submit" class="w3-cell" id="setEndBtn" value="도착지"></input></td>
	    	</tr>
	    <% } %>
		</tbody>
	</table>
</body>
</html>